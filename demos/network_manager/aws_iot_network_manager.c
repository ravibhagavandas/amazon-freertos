/*
 * FreeRTOS V202012.00
 * Copyright (C) 2020 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * http://aws.amazon.com/freertos
 * http://www.FreeRTOS.org
 */

/**
 * @file aws_iot_network_manager.c
 * @brief Network manager is used to handled different types of network connections and their connection/disconnection events at the application layer.
 */
#include <string.h>
#include <stdint.h>

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"

#include "iot_demo_logging.h"
#include "iot_network_manager_private.h"

#include "iot_taskpool.h"

/** Platform level includes **/
#include "platform/iot_threads.h"
#include "platform/iot_clock.h"

#include "aws_clientcredential.h"
#include "aws_clientcredential_keys.h"

#if BLE_ENABLED
    #include "iot_ble_config.h"
    #include "iot_ble.h"
    #include "iot_ble_numericComparison.h"
    #include "platform/iot_network_ble.h"
#endif

#if WIFI_ENABLED
    #include "iot_wifi.h"
#endif

#if TCPIP_NETWORK_ENABLED
    #include "platform/iot_network_freertos.h"
#endif

#if ( IOT_BLE_ENABLE_WIFI_PROVISIONING == 1 )
    #include "iot_ble_wifi_provisioning.h"
    #include "aws_wifi_connect_task.h"
#endif

#if ( IOT_WIFI_ENABLE_SOFTAP_PROVISIONING == 1 )
    #include "iot_softap_wifi_provisioning.h"
    #include "aws_wifi_connect_task.h"
#endif

/**
 * @brief Maximum number of demo application subscriptions for network manager.
 * Demo tasks or application moduels can subscribe individual subscription callbacks upto the maximum
 * subscriptions defined here.
 */
#define NETWORK_MANAGER_MAX_SUBSCRIPTIONS          ( 5 )

#define _NM_WIFI_CONNECTION_RETRY_INTERVAL_MS    ( 1000 )

#define _NM_WIFI_CONNECTION_RETRIES              ( 5 )

/**
 * @brief Macro to get the number of networks from the size of the static array of networks.
 */
#define NUM_NETWORKS     ( sizeof( networks ) / sizeof( IotNetwork_t ) )

/**
 * @brief Macro to get the size of the static array of rules enabled.
 */
#define NUM_RULES      ( sizeof( rules ) / sizeof( IotNetworkRule_t ) )

/**
 * @brief The number of network events pending in the queue at any time.
 * The value is configured such that there is at max two pending events per network at any time.
 */
#define MAX_NETWORK_EVENTS    ( NUM_NETWORKS * 2U )

/**
 * @brief Stack size for network manager task.
 */
#define NETWORK_MANAGER_TASK_STACK_SIZE       ( configMINIMAL_STACK_SIZE * 4 )

/**
 * @brief Task priority for network manager task.
 */
#define NETWORK_MANAGER_TASK_PRIORITY         ( tskIDLE_PRIORITY )

/**
 * @brief Structure holds information for each network and the runtime state of it.
 */
typedef struct IotNetwork
{
    uint32_t type;
    AwsIotNetworkState_t state;
    const IotNetworkInterface_t * pNetworkInterface;
    void * pConnectionParams;
    void * pCredentials;
} IotNetwork_t;

/**
 * @brief Structure holds information for each of the network state change subscription.
 */
typedef struct IotNetworkSubscription
{
    uint32_t networkTypes;
    AwsIotNetworkStateChangeCb_t callback;
    void * pContext;
    bool isActive;
} IotNetworkSubscription_t;

typedef struct IotNetworkRule
{
    uint32_t  networkType;
    uint32_t  currentState;
    AwsIotNetworkState_t  nextState;
    bool     ( * pCallback )( void );
    bool     ( * pCondition )( void );
} IotNetworkRule_t;

typedef struct IotNetworkEvent
{
    uint32_t             networkType;
    AwsIotNetworkState_t nextState;
    TaskHandle_t         pTaskToNotify;
} IotNetworkEvent_t;

#if BLE_ENABLED

/**
 * @brief Register/unregister callbacks related to BLE middleware.
 *
 * @param[in] unRegister Set to true to unRegister
 * @return true if success false otherwise.
 *
 */
    static bool _bleRegisterUnregisterCb( bool unRegister );

/**
 * @brief Function used to enable a BLE network.
 *
 * @return true if BLE is enabled successfully.
 */
    static bool prvTurnOnBLE( void );


/**
 * @brief Function used to disable a BLE network.
 *
 * @return true if BLE is disable successfully, false if already disabled
 */
    static bool prvTurnOffBLE( void );


    /**
     * @brief Function starts BLE advertisement so that the device is discoverable mode.
     *
     * @return true if successfully started advertisment.
     */
    static bool prvStartBLEAdvertisement( void );

    /**
     * @brief Function stops BLE advertisement so that the device is in non-discoverable mode.
     *
     * @return true if successfully stopped advertisment.
     */
    static bool prvStopBLEAdvertisement( void );

    /**
     * @brief Callback invokedon a new BLE connection or disconnection.
     */
    static void _bleConnectionCallback( BTStatus_t status,
                                        uint16_t connectionID,
                                        bool isConnected,
                                        BTBdaddr_t * pRemoteAddress );

#endif /* if BLE_ENABLED */


#if WIFI_ENABLED

    #if ( IOT_BLE_ENABLE_WIFI_PROVISIONING == 0 && IOT_WIFI_ENABLE_SOFTAP_PROVISIONING == 0 )

        /**
         * Connects to the WIFI using credentials configured statically
         * @return true if connected successfully.
         */
        static bool prvConnectToAccessPoint( void );

    #else
         /**
         * Connects to the WIFI using credentials configured statically
         * @return true if connected successfully.
         */
        static bool prvStartWiFiProvisionTask( void );

    #endif
/**
 * @brief Function used to enable a WIFI network.
 *
 * @return true if WIFI is enabled successfully.
 */
    static bool prvTurnOnWiFI( void );

/**
 * @brief Function used to disable a WIFI network.
 *
 * @return true if WIFI is disable successfully, false if already disabled
 */
    static bool prvTurnOffWiFI( void );

/**
 * @brief The callback invoked for WiFi events from the driver. The callback
 * is used to change the WiFi state in network manager.
 */
    static void _wifiEventHandler( WIFIEvent_t * xEvent );

#endif /* if WIFI_ENABLED */

/**
 *  @brief Invoked on state changes for each of the network.
 */
static void prvProcessNetworkStateChange( uint32_t networkType,
                                           AwsIotNetworkState_t newState );

/**
 * @brief Taskpool routine to schedule user subscriptions for network state changes.
 */
static void prvDispatchEvent( uint32_t networkType, AwsIotNetworkState_t newState );
/**
 * @brief Initialize TCP/IP credentials for WIFI and ethernet networks.
 */
static void _initializeTCPIPCredentials( void );

/**
 * @brief The credentials placeholder for a TCP/IP network.
 *
 */
static IotNetworkCredentials_t tcpIPCredentials = { 0 };

/*
 * @brief Connection parameters placeholder for a TCP/IP network.
 */
static IotNetworkServerInfo_t tcpIPConnectionParams = { 0 };

static const IotNetwork_t networks[] =
{
    #if BLE_ENABLED
        {
            .type              = AWSIOT_NETWORK_TYPE_BLE,
            .link              = IOT_LINK_INITIALIZER,
            .state             = eNetworkStateUnknown,
            .pNetworkInterface = IOT_NETWORK_INTERFACE_BLE,
            .pCredentials      = NULL,
            .pConnectionParams = NULL
        },
    #endif

    #if WIFI_ENABLED
        {
            .type              = AWSIOT_NETWORK_TYPE_WIFI,
            .link              = IOT_LINK_INITIALIZER,
            .state             = eNetworkStateUnknown,
            .pNetworkInterface = IOT_NETWORK_INTERFACE_AFR,
            .pCredentials      = &tcpIPCredentials,
            .pConnectionParams = &tcpIPConnectionParams
        },
    #endif

    #if ETH_ENABLED
        {
            .type              = AWSIOT_NETWORK_TYPE_ETH,
            .link              = IOT_LINK_INITIALIZER,
            .state             = eNetworkStateUnknown,
            .pNetworkInterface = IOT_NETWORK_INTERFACE_AFR,
            .pCredentials      = &tcpIPCredentials,
            .pConnectionParams = &tcpIPConnectionParams
        },
    #endif
};

static const IotNetworkRule_t rules[] =
{
    #if BLE_ENABLED
        {
            .networkType           = AWSIOT_NETWORK_TYPE_BLE,
            .currentState          = eNetworkStateUnknown,
            .nextState             = eNetworkStateDisabled,
            .pCallback             = prvTurnOnBLE
        },
        {
            .networkType          = AWSIOT_NETWORK_TYPE_BLE,
            .currentState         = ( eNetworkStateEnabled | eNetworkStateDisabled ),
            .nextState            = eNetworkStateUnknown,
            .pCallback            = prvTurnOffBLE,
        },
        {
            .networkType          = AWSIOT_NETWORK_TYPE_BLE,
            .currentState         = ( eNetworkStateUnknown | eNetworkStateDisabled ),
            .nextState            = eNetworkStateEnabled,
            .pCallback            = prvStopBLEAdvertisement,
        },
        {
            .networkType          = AWSIOT_NETWORK_TYPE_BLE,
            .currentState         = eNetworkStateEnabled,
            .nextState            = eNetworkStateDisabled,
            .pCallback            = prvStartBLEAdvertisement,
        },
    #endif
    
    #if WIFI_ENABLED
        {
            .networkType           = AWSIOT_NETWORK_TYPE_WIFI,
            .currentState          = eNetworkStateUnknown,
            .nextState             = eNetworkStateDisabled,
            .pCallback             = prvTurnOnWiFI,
        },
        {
            .networkType           = AWSIOT_NETWORK_TYPE_BLE,
            .currentState          = ( eNetworkStateEnabled | eNetworkStateDisabled ),
            .nextState             = eNetworkStateDisabled,
            .pCallback             = prvTurnOffWiFI,
        },
        #if ( IOT_BLE_ENABLE_WIFI_PROVISIONING == 1 ) || ( IOT_WIFI_ENABLE_SOFTAP_PROVISIONING == 1 )
            {
                .networkType        = ( AWSIOT_NETWORK_TYPE_BLE | AWSIOT_NETWORK_TYPE_WIFI ),
                .currentState       = ( eNetworkStateUnknown | eNetworkStateEnabled )
                .nextState          = eNetworkStateDisabled
                .pCallback          = prvStartWiFiProvisioning 
            },
        #else
            {
                .networkType        = ( AWSIOT_NETWORK_TYPE_BLE | AWSIOT_NETWORK_TYPE_WIFI ),
                .currentState       = ( eNetworkStateUnknown | eNetworkStateEnabled ),
                .nextState          = eNetworkStateDisabled,
                .pAction            = prvConnectToAccessPoint
            },
        #endif
    #endif

    #if ETH_ENABLED
        {
            .networkType           = AWSIOT_NETWORK_TYPE_ETH,
            .currentState          = ( eNetworkStateUnknown | eNetworkStateDisabled ),
            .nextState             = eNetworkStateEnabled,
            .pCallback             = NULL,
        },
        {
            .networkType          = AWSIOT_NETWORK_TYPE_ETH,
            .currentState         = ( eNetworkStateEnabled | eNetworkStateDisabled ),
            .nextState            = eNetworkStateDisabled,
            .pCallback            = NULL,
        },
    #endif
};

static SemaphoreHandle_t globalMutex;

static SemaphoreHandle_t subscriptionMutex;

static IotNetworkSubscription_t subscriptions[ NETWORK_MANAGER_MAX_SUBSCRIPTIONS ];

static QueueHandle_t eventQueue;

#if BLE_ENABLED

    static bool _bleRegisterUnregisterCb( bool unRegister )
    {
        IotBleEventsCallbacks_t eventCallback;
        BTStatus_t status = eBTStatusSuccess;
        bool ret = false;

        eventCallback.pConnectionCb = _bleConnectionCallback;

        if( unRegister == false )
        {
            status = IotBle_RegisterEventCb( eBLEConnection, eventCallback );
        }
        else
        {
            status = IotBle_UnRegisterEventCb( eBLEConnection, eventCallback );
        }

        if( status == eBTStatusSuccess )
        {
            eventCallback.pGAPPairingStateChangedCb = &vDemoBLEGAPPairingStateChangedCb;

            if( unRegister == false )
            {
                status = IotBle_RegisterEventCb( eBLEPairingStateChanged, eventCallback );
            }
            else
            {
                status = IotBle_UnRegisterEventCb( eBLEPairingStateChanged, eventCallback );
            }
        }

        #if ( IOT_BLE_ENABLE_NUMERIC_COMPARISON == 1 )
            if( status == eBTStatusSuccess )
            {
                eventCallback.pNumericComparisonCb = &vDemoBLENumericComparisonCb;

                if( unRegister == false )
                {
                    status = IotBle_RegisterEventCb( eBLENumericComparisonCallback, eventCallback );
                }
                else
                {
                    status = IotBle_UnRegisterEventCb( eBLENumericComparisonCallback, eventCallback );
                }
            }
        #endif /* if ( IOT_BLE_ENABLE_NUMERIC_COMPARISON == 1 ) */

        if( status == eBTStatusSuccess )
        {
            ret = true;
        }

        return ret;
    }

    static bool prvTurnOnBLE( void )
    {
        bool ret = true;
        static bool bleInited = false;
        BTStatus_t status;

        if( bleInited == false )
        {
            if( IotBle_Init() == eBTStatusSuccess )
            {
                bleInited = true;
            }
            else
            {
                IotLogError( "Failed to initialize BLE." );
                ret = false;
            }

            #if ( IOT_BLE_ENABLE_NUMERIC_COMPARISON == 1 )
                if( ret == true )
                {
                    vDemoBLENumericComparisonInit();
                }
            #endif
        }

        if( ret == true )
        {
            /* Register BLE Connection callback */
            ret = _bleRegisterUnregisterCb( false );
        }

        if( ret == true )
        {
            status = IotBle_On();

            if( status != eBTStatusSuccess )
            {
                IotLogError( "Failed to toggle BLE on." );
                ret = false;
            }
        }

        return ret;
    }

/*-----------------------------------------------------------*/
/* TODO make same function to register/unregister or risk of memory leak. */
    static bool prvTurnOffBLE( void )
    {
        bool ret = true;

        /* Unregister the callbacks */
        ret = _bleRegisterUnregisterCb( true );

        if( ret == true )
        {
            /* Turn off BLE */
            if( IotBle_Off() != eBTStatusSuccess )
            {
                ret = false;
            }
        }

        return ret;
    }

    static bool prvStopBLEAdvertisement( void )
    {
        BTStatus_t status = IotBle_StopAdv( NULL );
        return ( status == eBTStatusSuccess );
    }

    static bool prvStartBLEAdvertisement( void )
    {
        BTStatus_t status = IotBle_StartAdv( NULL );
        return ( status == eBTStatusSuccess );
    }

    static void _bleConnectionCallback( BTStatus_t status,
                                        uint16_t connectionID,
                                        bool isConnected,
                                        BTBdaddr_t * pRemoteAddress )
    {
        AwsIotNetworkState_t newState;

        if( isConnected == true )
        {
            IotLogInfo( "BLE Connected to remote device, connId = %d\n", connectionID );
            newState = eNetworkStateEnabled;
        }
        else
        {
            IotLogInfo( "BLE disconnected with remote device, connId = %d \n", connectionID );
            newState = eNetworkStateDisabled;
        }

        prvProcessNetworkStateChange( AWSIOT_NETWORK_TYPE_BLE, newState );
    }


#endif /* if BLE_ENABLED */
/*-----------------------------------------------------------*/
#if WIFI_ENABLED

    #if ( IOT_BLE_ENABLE_WIFI_PROVISIONING == 0 && IOT_WIFI_ENABLE_SOFTAP_PROVISIONING == 0 )

        static bool prvConnectToAccessPoint( void )
        {
            bool status = true;
            WIFINetworkParams_t xConnectParams;
            size_t xSSIDLength, xPasswordLength;
            const char * pcSSID = clientcredentialWIFI_SSID;
            const char * pcPassword = clientcredentialWIFI_PASSWORD;
            WIFISecurity_t xSecurity = clientcredentialWIFI_SECURITY;
            uint32_t numRetries = _NM_WIFI_CONNECTION_RETRIES;
            uint32_t delayMilliseconds = _NM_WIFI_CONNECTION_RETRY_INTERVAL_MS;

            if( pcSSID != NULL )
            {
                xSSIDLength = strlen( pcSSID );

                if( ( xSSIDLength > 0 ) && ( xSSIDLength < wificonfigMAX_SSID_LEN ) )
                {
                    xConnectParams.ucSSIDLength = xSSIDLength;
                    memcpy( xConnectParams.ucSSID, clientcredentialWIFI_SSID, xSSIDLength );
                }
                else
                {
                    status = false;
                }
            }
            else
            {
                status = false;
            }

            xConnectParams.xSecurity = xSecurity;

            switch( xSecurity )
            {
                case eWiFiSecurityWPA:
                case eWiFiSecurityWPA2:

                    if( pcPassword != NULL )
                    {
                        xPasswordLength = strlen( clientcredentialWIFI_PASSWORD );

                        if( ( xPasswordLength > 0 ) && ( xPasswordLength < wificonfigMAX_PASSPHRASE_LEN ) )
                        {
                            xConnectParams.xPassword.xWPA.ucLength = xPasswordLength;
                            memcpy( xConnectParams.xPassword.xWPA.cPassphrase, clientcredentialWIFI_PASSWORD, xPasswordLength );
                        }
                        else
                        {
                            status = false;
                        }
                    }
                    else
                    {
                        status = false;
                    }

                    break;

                case eWiFiSecurityOpen:
                    /* Nothing to do. */
                    break;

                case eWiFiSecurityWPA3:
                case eWiFiSecurityWPA2_ent:
                case eWiFiSecurityWEP:
                default:
                    IotLogError( "The configured WiFi security option is not supported." );
                    status = false;
                    break;
            }

            if( status == true )
            {
                /* Try to connect to wifi access point with retry and exponential delay */
                do
                {
                    if( WIFI_ConnectAP( &( xConnectParams ) ) == eWiFiSuccess )
                    {
                        wifiNetwork.state = eNetworkStateEnabled;
                        break;
                    }
                    else
                    {
                        if( numRetries > 0 )
                        {
                            IotClock_SleepMs( delayMilliseconds );
                            delayMilliseconds = delayMilliseconds * 2;
                        }
                        else
                        {
                            status = false;
                        }
                    }
                } while( numRetries-- > 0 );
            }

            return status;
        }

    #else
        static bool prvStartWiFiProvisionTask( void )
        {
            bool status = false;
            if( xWiFiConnectTaskInitialize() == pdTRUE )
            {
                status = true;
            }
            return status;
        }

    #endif /* if ( IOT_BLE_ENABLE_WIFI_PROVISIONING == 0 && IOT_WIFI_ENABLE_SOFTAP_PROVISIONING == 0 ) */


    static bool prvTurnOnWiFI( void )
    {
        bool ret = true;
        WIFIReturnCode_t wifiRet;

        if( WIFI_On() != eWiFiSuccess )
        {
            ret = false;
        }

        if( ret == true )
        {
            /* Register network state change callback with the Wi-Fi driver */
            wifiRet = WIFI_RegisterEvent( eWiFiEventIPReady, _wifiEventHandler );

            if( wifiRet == eWiFiSuccess )
            {
                wifiRet = WIFI_RegisterEvent( eWiFiEventDisconnected, _wifiEventHandler );
            }

            if( ( wifiRet != eWiFiSuccess ) && ( wifiRet != eWiFiNotSupported ) )
            {
                ret = false;
            }
        }

        #if ( IOT_BLE_ENABLE_WIFI_PROVISIONING == 0 && IOT_WIFI_ENABLE_SOFTAP_PROVISIONING == 0 )
            if( ret == true )
            {
                ret = prvConnectToAccessPoint();
            }
        #else
            if( ret == true )
            {
                if( xWiFiConnectTaskInitialize() != pdTRUE )
                {
                    ret = false;
                }
            }
        #endif /* if ( IOT_BLE_ENABLE_WIFI_PROVISIONING == 0 && IOT_WIFI_ENABLE_SOFTAP_PROVISIONING == 0 ) */

        return ret;
    }

    static bool prvTurnOffWiFI( void )
    {
        bool ret = true;

        #if ( IOT_BLE_ENABLE_WIFI_PROVISIONING == 1 ) || ( IOT_WIFI_ENABLE_SOFTAP_PROVISIONING == 1 )
            vWiFiConnectTaskDestroy();
        #endif

        if( WIFI_IsConnected( NULL ) == pdTRUE )
        {
            if( WIFI_Disconnect() != eWiFiSuccess )
            {
                ret = false;
            }
        }

        if( ret == true )
        {
            if( WIFI_Off() != eWiFiSuccess )
            {
                ret = false;
            }
        }

        return ret;
    }

    static void _wifiEventHandler( WIFIEvent_t * pxEvent )
    {
        uint8_t * pucIpAddr;

        if( pxEvent->xEventType == eWiFiEventIPReady )
        {
            pucIpAddr = ( uint8_t * ) ( &pxEvent->xInfo.xIPReady.xIPAddress.ulAddress[ 0 ] );
            IotLogInfo( "Connected to WiFi access point, ip address: %d.%d.%d.%d.", pucIpAddr[ 0 ], pucIpAddr[ 1 ], pucIpAddr[ 2 ], pucIpAddr[ 3 ] );
            prvProcessNetworkStateChange( AWSIOT_NETWORK_TYPE_WIFI, eNetworkStateEnabled );
        }
        else if( pxEvent->xEventType == eWiFiEventDisconnected )
        {
            IotLogInfo( "Disconnected from WiFi access point, reason code: %d.", pxEvent->xInfo.xDisconnected.xReason );
            prvProcessNetworkStateChange( AWSIOT_NETWORK_TYPE_WIFI, eNetworkStateDisabled );
        }
    }

#endif /* if WIFI_ENABLED */

/*-----------------------------------------------------------*/
static bool processRules( uint32_t networkType, AwsIotNetworkState_t currentState, AwsIotNetworkState_t nextState )
{
    size_t index = 0;
    bool status = false;

    for( index = 0; index < NUM_RULES; index++ )
    {
        if(  ( ( rules[index].networkType & networkType ) == networkType  ) &&
             ( ( rules[index].currentState & currentState ) == currentState ) &&
             ( rules[index].nextState == nextState ) &&
             ( ( rules[index].pCondition == NULL ) || rules[index].pCondition() ) )
        {
            if( rules[index].pCallback() )
            {
                status = true;
            }
            break;
        }
    }

    return status;
}

static IotNetwork_t * prvGetNetwork( uint32_t networkType )
{
    size_t index = 0;
    IotNetwork_t *pNetwork = NULL;

    for( index = 0; index < NUM_NETWORKS; index++ )
    {
        if( networks[index].type == networkType )
        {
            pNetwork = &networks[index];
            break;
        }
    }

    return pNetwork;
}

static void prvNetworkManagerTask( void *pvParams )
{
    BaseType_t status = pdFALSE;
    IotNetwork_t *pNetwork = NULL;
    IotNetworkEvent_t networkEvent = { 0 };

    for( ;; )
    {
        status = xQueueReceive( eventQueue, &networkEvent, portMAX_DELAY );

        if( status == pdTRUE )
        {
            pNetwork = prvGetNetwork( networkEvent.networkType );
            processRules( networkEvent.networkType, pNetwork->state, networkEvent.nextState );
            prvDispatchEvent( networkEvent.networkType, networkEvent.nextState );
        }
    }

}

static void prvDispatchEvent( uint32_t networkType, AwsIotNetworkState_t newState )
{
    size_t index = 0;

    for( index = 0; index < NETWORK_MANAGER_MAX_SUBSCRIPTIONS; index++ )
    {
        if( ( subscriptions[index].isActive == true ) &&
            ( ( subscriptions[index].networkType & networkType ) == networkType ) )
        {
            subscriptions[index].callback( networkType, newState, subscriptions[index].pContext );
        }
    }
}


static void _initializeTCPIPCredentials( void )
{
    #if TCPIP_NETWORK_ENABLED
        tcpIPConnectionParams.pHostName = clientcredentialMQTT_BROKER_ENDPOINT;
        tcpIPConnectionParams.port = clientcredentialMQTT_BROKER_PORT;

        if( tcpIPConnectionParams.port == 443 )
        {
            tcpIPCredentials.pAlpnProtos = socketsAWS_IOT_ALPN_MQTT;
        }
        else
        {
            tcpIPCredentials.pAlpnProtos = NULL;
        }

        tcpIPCredentials.maxFragmentLength = 0;
        tcpIPCredentials.disableSni = false;
        tcpIPCredentials.pRootCa = NULL;
        tcpIPCredentials.rootCaSize = 0;
        tcpIPCredentials.pClientCert = keyCLIENT_CERTIFICATE_PEM;
        tcpIPCredentials.clientCertSize = sizeof( keyCLIENT_CERTIFICATE_PEM );
        tcpIPCredentials.pPrivateKey = keyCLIENT_PRIVATE_KEY_PEM;
        tcpIPCredentials.privateKeySize = sizeof( keyCLIENT_PRIVATE_KEY_PEM );
    #endif /* if TCPIP_NETWORK_ENABLED */
}

/*-----------------------------------------------------------*/

BaseType_t AwsIotNetworkManager_Init( void )
{
    BaseType_t status = pdTRUE;
    static bool isInit = false;

    if( !isInit )
    {
        isInit = true;

        globalMutex = xSemaphoreCreateMutex();
        if( globalMutex == NULL )
        {
            IotLogError( "Failed to create global mutex for thread safety." );
            status = pdFALSE;
        }

        if( status == pdTRUE )
        {
            subscriptionMutex = xSemaphoreCreateMutex();
            if( subscriptionMutex == NULL )
            {
                IotLogError( "Failed to create subscription mutex." );
                status = pdFALSE;
            }
        }

        if( status == pdTRUE )
        {
            eventQueue = xQueueCreate( sizeof( IotNetworkEvent_t ), MAX_NETWORK_EVENTS );
            if( eventQueue == NULL )
            {
                IotLogError( "Failed to create network event queue." );
                status = pdFALSE;
            }
        }

        if( status == pdTRUE )
        {
            status = xTaskCreate( prvNetworkManagerTask,
                                  "NetworkManager",
                                  NETWORK_MANAGER_TASK_STACK_SIZE,
                                  NULL,
                                  NETWORK_MANAGER_TASK_PRIORITY,
                                  NULL );
        }

        if( status == pdTRUE )
        {
            _initializeTCPIPCredentials();
        }
    }

    return status;
}

BaseType_t AwsIotNetworkManager_SubscribeForStateChange( uint32_t networkTypes,
                                                         AwsIotNetworkStateChangeCb_t callback,
                                                         void * pContext,
                                                         IotNetworkManagerSubscription_t * pHandle )
{
    BaseType_t ret = pdFALSE;
    size_t index;

    xSemaphoreTake( subscriptionMutex, portMAX_DELAY );

    for( index = 0; index < NETWORK_MANAGER_MAX_SUBSCRIPTIONS; index++ )
    {
        if( subscriptions[index].isActive == false )
        {
            subscriptions[index].isActive = true;
            subscriptions[index].callback = callback;
            subscriptions[index].pContext = pContext;
            subscriptions[index].networkTypes = networkTypes;

            ( * pHandle ) = ( IotNetworkManagerSubscription_t ) ( &subscriptions[index] ); 
            ret = pdTRUE;
            break;
        }
    }

    xSemaphoreGive( subscriptionMutex );

    if( ret == pdFALSE )
    {
        IotLogError( "Maximum number of subscription limits reached." );
    }

    return ret;
}

BaseType_t AwsIotNetworkManager_RemoveSubscription( IotNetworkManagerSubscription_t handle )
{
    BaseType_t ret = pdFALSE;
    size_t index;
    IotNetworkSubscription_t * pSubscription = ( IotNetworkSubscription_t * ) handle;

    xSemaphoreTake( subscriptionMutex, portMAX_DELAY );
    for( index = 0; index < NETWORK_MANAGER_MAX_SUBSCRIPTIONS; index++ )
    {
        if( pSubscription == &subscriptions[ index ] )
        {
            memset( pSubscription, 0x00, sizeof( IotNetworkSubscription_t ) );
            ret = pdTRUE;
            break;
        }
    }
    xSemaphoreGive( subscriptionMutex );

    if( ret == pdFALSE )
    {
        IotLogError( "Failed to find a subscription for the handle." );
    }

    return ret;
}

uint32_t AwsIotNetworkManager_GetConfiguredNetworks( void )
{
    size_t index;
    uint32_t networks = AWSIOT_NETWORK_TYPE_NONE;

    for( index = 0; index < NUM_NETWORKS; index++ )
    {
        networks = ( networks | networks[index].type );
    }
    return networks;
}

uint32_t AwsIotNetworkManager_GetEnabledNetworks( void )
{
    uint32_t networks = AWSIOT_NETWORK_TYPE_NONE;
    size_t index;

    for( index = 0; index < NUM_NETWORKS; index++ )
    {
        if( networks[index].state != eNetworkStateUnknown )
        {
            networks = ( networks | networks[index].type );

        }
    }

    return networks;
}

uint32_t AwsIotNetworkManager_GetConnectedNetworks( void )
{
    uint32_t networks = AWSIOT_NETWORK_TYPE_NONE;
    size_t index;

    for( index = 0; index < NUM_NETWORKS; index++ )
    {
        if( networks[index].state == eNetworkStateEnabled )
        {
            networks = ( networks | networks[index].type );
        }
    }

    return networks;
}

uint32_t AwsIotNetworkManager_EnableNetwork( uint32_t networkTypes )
{
    uint32_t enabled = AWSIOT_NETWORK_TYPE_NONE;
    IotNetwork_t * pNetwork = NULL;
    size_t index;

    for( index = 0; index < NUM_NETWORKS; index++ )
    {
        pNetwork = &networks[index];
        if( ( networkTypes & pNetwork->type ) == pNetwork->type )
        {
            if( processTrigger( pNetwork, eNetworkStateEnabled ) == true )
            {
                enabled  |= pNetwork->type;
            }
        }
    }
    return enabled;
}

uint32_t AwsIotNetworkManager_DisableNetwork( uint32_t networkTypes )
{
    uint32_t disabled = AWSIOT_NETWORK_TYPE_NONE;
    IotNetwork_t * pNetwork = NULL;
    size_t index;

    for( index = 0; index < NUM_NETWORKS; index++ )
    {
        pNetwork = &networks[index];
        if( ( networkTypes & pNetwork->type ) == pNetwork->type )
        {
            if( processTrigger( pNetwork, eNetworkStateDisabled ) == true )
            {
                disabled  |= pNetwork->type;
            }
        }
    }
    return disabled;
}

const IotNetworkInterface_t * AwsIotNetworkManager_GetNetworkInterface( uint32_t networkType )
{
    const IotNetworkInterface_t * pInterface = NULL;
    size_t index;

    for( index = 0; index < NUM_NETWORKS; index++ )
    {
        if( networks[index].type == networkType )
        {
            pInterface = networks[index].pNetworkInterface;
            break;
        }
    }

    return pInterface;
}

void * AwsIotNetworkManager_GetCredentials( uint32_t networkType )
{
    void * pCredentials = NULL;
    size_t index;

    for( index = 0; index < NUM_NETWORKS; index++ )
    {
        if( networks[index].type == networkType )
        {
            pCredentials = networks[index].pCredentials;
            break;
        }
    }

    return pCredentials;
}

void * AwsIotNetworkManager_GetConnectionParams( uint32_t networkType )
{
    void * pConnectionParams = NULL;
    size_t index;

    for( index = 0; index < NUM_NETWORKS; index++ )
    {
        if( networks[index].type == networkType )
        {
            pConnectionParams = networks[index].pConnectionParams;
            break;
        }
    }

    return pConnectionParams;
}

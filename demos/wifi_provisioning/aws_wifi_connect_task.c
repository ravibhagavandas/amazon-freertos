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

#include "iot_config.h"

/**
 * @brief The demo task is used to connect to the list of provisioned WIFI networks in priority order.
 * The task also handles WIFI disconnection and reconnect to the provisioned APs upto a configured number of retries.
 */

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "aws_demo_config.h"

#if BLE_ENABLED
#include "iot_ble_config.h"
#endif

#include "aws_wifi_connect_task.h"
#include "iot_network_manager_private.h"

#if IOT_WIFI_ENABLE_SOFTAP_PROVISIONING == 1
    #include "iot_softap_wifi_provisioning.h"
#endif
#if IOT_BLE_ENABLE_WIFI_PROVISIONING == 1
    #include "iot_ble_wifi_provisioning.h"
#endif


#define wifiConnectTASK_NAME        "WiFiConnectTask"

/**
 * @brief Delay in milliseconds between connecting to the provisioned WiFi networks.
 */
#define wifiConnectDELAY_MILLISECONDS    ( 1000 )

/**
 * @brief Semaphore used to notify the WiFI provisioning task that WIFI is disconnected.
 */
static SemaphoreHandle_t xWiFiDisconnectedSemaphore = NULL;

/**
 * @brief Task handle used for WiFi provisioning task.
 */
static TaskHandle_t xWifiConnectionTask = NULL;

/**
 * @brief Handle used to store network manager subscription.
 */
static IotNetworkManagerSubscription_t xHandle = IOT_NETWORK_MANAGER_SUBSCRIPTION_INITIALIZER;

/**
 * @brief Task for WiFi Reconnection. The task loops through the provisioned wifi networks in priority order
 * until retry limit is reached or a network is connected. Task gets triggered on every WiFi disconnection.
 */
static void prvWiFiConnectTask( void * pvParams );

/**
 * @brief WIFI network state change callback.
 * The callback is used to trigger reconnection to the provisioned WiFi networks on a network disconnect.
 */

static void prvWiFiNetworkStateChangeCallback( uint32_t ulNetworkType,
                                               AwsIotNetworkState_t xNetworkState,
                                               void * pvContext );

/**
 * @brief The function loops through all provisioned WiFi access points and tries
 * to connect in a priority order. It tries to connect to each network once and returns pdFALSE 
 * if all tries fails.
 * 
 * @return pdTRUE if WiFi connection is established successfully. 
 * 
 */
static BaseType_t prvConnectToProvisionedWiFiNetworks( void );

static void prvWiFiNetworkStateChangeCallback( uint32_t ulNetworkType,
                                               AwsIotNetworkState_t xNetworkState,
                                               void * pvContext )
{
    bool status;
    if( xNetworkState == eNetworkStateEnabled )
    {
        #if ( IOT_BLE_ENABLE_WIFI_PROVISIONING == 1 )
            status = IotBleWifiProv_Stop();
            configASSERT( status == true );
        #endif
    }
    else
    {
        /**
         * Sent a notification to the WiFi connect task to trigger a reconnection or start
         * WiFi provisioning loop.
         */
        if( xWifiConnectionTask != NULL )
        {
            xTaskNotifyGiveIndexed( xWifiConnectionTask, 0 );
        }
        
    }
}

static BaseType_t prvConnectToProvisionedNetworks( void )
{
    BaseType_t xStatus = pdFALSE;
    uint16_t usNumNetworks, usPriority;

    #if ( IOT_WIFI_ENABLE_SOFTAP_PROVISIONING == 1 )
        usNumNetworks = IotWifiSoftAPProv_GetNumNetworks();
    #elif ( IOT_BLE_ENABLE_WIFI_PROVISIONING == 1 )
        usNumNetworks = IotBleWifiProv_GetNumNetworks();
    #else
        #error "Either Soft AP WiFi provisioning or BLE WiFi provisioning should be enabled."
    #endif
    
    for( usPriority = 0; usPriority < usNumNetworks; usPriority++ )
    {
        configPRINTF( ( "Connecting to provisioned WiFi network at index %d", usPriority  ) );

        #if ( IOT_WIFI_ENABLE_SOFTAP_PROVISIONING == 1 )
            xStatus = IotWifiSoftAPProv_Connect( usPriority );
        #elif ( IOT_BLE_ENABLE_WIFI_PROVISIONING == 1 )
            xStatus = IotBleWifiProv_Connect( usPriority );
        #else
            #error "Either Soft AP WiFi provisioning or BLE WiFi provisioning should be enabled."
        #endif

        if( xStatus == pdTRUE )
        {
            configPRINTF( ( "Successfully connected to provisioned WiFi network at index %d", usPriority ) );
            break;
        }

        vTaskDelay( pdMS_TO_TICKS( wifiConnectDELAY_MILLISECONDS ) );
    }
    return xStatus;
}

void prvWiFiConnectTask( void * pvParams )
{
    bool status;
    for( ; ; )
    {
        /* Checks if WiFi is already connected to an access point. */
        if( WIFI_IsConnected() == pdFALSE )
        {

            /* Goes through the list of all provisioned networks and tries to connect them in priority order. */
            if( prvConnectToProvisionedNetworks() == pdFALSE )
            {
                /**
                 * If none of the connections are successfull, switches back into provisioning mode by runnning
                 * the provisioning process loop function. Function runs in a loop which awaits for provisioing
                 * commands from an external application. User can scan nearby access points, connect to an access point or save
                 * the access point credentials at this time. Upon successfull connection to a WiFi network, the demo network manager
                 * callback will be invoked with WiFi state as enabled. Callback then calls IotBleWifiProv_Stop() API which stops
                 * and returns from the process loop function.
                 */
                #if( IOT_BLE_ENABLE_WIFI_PROVISIONING == 1 )
                    status = IotBleWifiProv_RunProcessLoop();
                    if( status == false )
                    {
                        configPRINTF(( "Failed to run process loop function of WiFi provisioning. Exiting demo task.\r\n" ));
                        break;
                    }
                #endif
            }
        }
        else
        {
            /* Wait for a WiFi disconnection notification from the network manager callback. */
            ( void ) ulTaskNotifyTakeIndexed( 0, pdTRUE, portMAX_DELAY );
        }
        
    }

    vTaskDelete( NULL );
}

BaseType_t xWiFiConnectTaskInitialize( void )
{

    BaseType_t xStatus = pdTRUE;

    /* Initialize WiFi Provisioning over Soft AP or BLE. */
    #if ( IOT_WIFI_ENABLE_SOFTAP_PROVISIONING == 1 )
        xStatus = IotWifiSoftAPProv_Init();
    #elif  ( IOT_BLE_ENABLE_WIFI_PROVISIONING == 1 )
        if( IotBleWifiProv_Init() != true )
        {
            xStatus = pdFALSE;
        }
    #endif

    if( xStatus == pdTRUE )
    {
        /* Subscribe a callback for WiFi network connect/disconnect events from network manager. */
        xStatus = AwsIotNetworkManager_SubscribeForStateChange(
            AWSIOT_NETWORK_TYPE_WIFI,
            prvWiFiNetworkStateChangeCallback,
            NULL,
            &xHandle );
    }

    if( xStatus == pdTRUE )
    {
        /**
         *  Creates the task which starts managing WiFi connection for the device. Task tries to connect to already provisioned
         * networks in a priority order. If connection is not successfull it enters the provisioning mode.
         */
        xStatus = xTaskCreate( prvWiFiConnectTask,
                            wifiConnectTASK_NAME,
                            democonfigDEMO_STACKSIZE,
                            NULL,
                            democonfigDEMO_PRIORITY,
                            &xWifiConnectionTask );
    }

    return xStatus;
}

void vWiFiConnectTaskDestroy( void )
{
    bool status;
    if( xHandle != NULL )
    {
        AwsIotNetworkManager_RemoveSubscription( xHandle );
        xHandle = NULL;
    }

    /* Stop the WiFi provisioning process loop if its already running. */
    #if ( IOT_BLE_ENABLE_WIFI_PROVISIONING == 1 )
        ( void ) IotBleWifiProv_Stop();
    #endif

    /* Delete the WiFi connection management task. */
    if( xWifiConnectionTask != NULL )
    {
        vTaskDelete( xWifiConnectionTask );
        xWifiConnectionTask = NULL;
    }

    /* Teardown resources used by WiFi provisioning. */
    #if ( IOT_WIFI_ENABLE_SOFTAP_PROVISIONING == 1 )
        ( void ) IotWifiSoftAPProv_Deinit();
    #elif  ( IOT_BLE_ENABLE_WIFI_PROVISIONING == 1 )
        ( void ) IotBleWifiProv_Deinit();
    #endif
}

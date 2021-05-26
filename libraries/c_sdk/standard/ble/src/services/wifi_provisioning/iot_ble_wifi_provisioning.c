/*
 * FreeRTOS BLE V2.2.0
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
 * @file aws_ble_wifi_provisioning.c
 * @brief BLE Gatt service for WiFi provisioning
 */

#include <string.h>
#include "FreeRTOS.h"
#include "queue.h"

#include "iot_config.h"
#include "iot_ble_config.h"
#include "iot_ble_wifi_provisioning.h"

/* Configure logs for the functions in this file. */
#ifdef IOT_LOG_LEVEL_GLOBAL
    #define LIBRARY_LOG_LEVEL    IOT_LOG_LEVEL_GLOBAL
#else
    #define LIBRARY_LOG_LEVEL    IOT_LOG_NONE
#endif

#define LIBRARY_LOG_NAME         ( "BLE_WIFI_PROV" )
#include "iot_logging_setup.h"


/**
 * @cond DOXYGEN_IGNORE
 * @brief Priority index value which is used to indicate the app as not to use.
 */
#define IOT_BLE_WIFI_PROV_NETWORK_INDEX_DONT_USE     ( -1 )

/**
 * @cond DOXYGEN_IGNORE
 * @brief The network rssi value which is used to indicate the app as not to use.
 */
#define IOT_BLE_WIFI_PROV_RSSI_DONT_USE     (    -100 )

#define LIST_NETWORK_RESPONSE_DEFAULT                              \
    {                                                              \
        .RSSI = IOT_BLE_WIFI_PROV_RSSI_DONT_USE,                   \
        .connected = false,                                        \
        .hidden    = false,                                        \
        .priorityIndex = IOT_BLE_WIFI_PROV_NETWORK_INDEX_DONT_USE  \
    }

/**
 * @ingroup ble_datatypes_structs
 * @brief Structure used for WiFi provisioning service.
 */
typedef struct IotBleWifiProvService
{
    IotBleDataTransferChannel_t * pChannel; /**< A pointer to the ble connection object. */
    int16_t connectedIdx;                   /**< Keeps track of the flash index of the network that is connected. */
    QueueHandle_t queue;
} IotBleWifiProvService_t;

typedef struct
{
    IotBleWifiProvMessageType_t type;
    union
    {
        IotBleWifiProvListNetworksRequest_t listNetworkRequest;
        IotBleWifiProvAddNetworkRequest_t addNetworkRequest;
        IotBleWifiProvEditNetworkRequest_t editNetworkRequest;
        IotBleWifiProvDeleteNetworkRequest_t deleteNetworkRequest;
    } m;

} IotBleWifiProvMessage_t;


static IotBleWifiProvService_t wifiProvisioning = { 0 };

static WIFIScanResult_t scanNetworks[ IOT_BLE_WIFI_PROVISIONIG_MAX_SCAN_NETWORKS ] = { 0 };

/*
 * @brief Callback registered for BLE write and read events received for each characteristic.
 */
static void prvTransportReceiveCallback( IotBleDataTransferChannelEvent_t event,
                       IotBleDataTransferChannel_t * pChannel,
                       void * pContext );

/*
 * @brief Parses List Network request params and creates task to list networks.
 */
static BaseType_t prvHandleListNetworkRequest( const uint8_t * pData,
                                       size_t length );

/*
 * @brief Parses Save Network request params and creates task to save the new network.
 */

static BaseType_t prvHandleAddNetworkRequest( const uint8_t * pData,
                                       size_t length );

/*
 * @brief Parses Edit Network request params and creates task to edit network priority.
 */
static BaseType_t prvHandleEditNetworkRequest( const uint8_t * pData,
                                       size_t length );
/*
 * @brief Parses Delete Network request params and creates task to delete a WiFi networ.
 */
static BaseType_t prvHandleDeleteNetworkRequest( const uint8_t * pData,
                                         size_t length );

/*
 * @brief Sends a status response for the request.
 */
static void prvSendStatusResponse( IotBleWifiProvMessageType_t responseType,
                                 WIFIReturnCode_t status );

/*-----------------------------------------------------------*/

static void prvTransportReceiveCallback( IotBleDataTransferChannelEvent_t event,
                       IotBleDataTransferChannel_t * pChannel,
                       void * pContext )
{
    IotBleWifiProvMessageType_t requestType;
    const uint8_t * pBuffer;
    size_t length;

    if( event == IOT_BLE_DATA_TRANSFER_CHANNEL_DATA_RECEIVED )
    {
        IotBleDataTransfer_PeekReceiveBuffer( pChannel, &pBuffer, &length );

        if( IotBleWiFiProv_GetRequestTypeFromMessage( pBuffer, length, &requestType ) == true )
        {
            IotLogDebug( "Received message type: %d, length %d", requestType, length );

            switch( requestType )
            {
                case IotBleWiFiProvListNetworksReq:
                    prvHandleListNetworkRequest( pBuffer, length );
                    break;

                case IotBleWiFiProvAddNetworkReq:
                    prvHandleAddNetworkRequest( pBuffer, length );
                    break;

                case IotBleWiFiProvEditNetworkReq:
                    prvHandleEditNetworkRequest( pBuffer, length );
                    break;

                case IotBleWiFiProvDeleteNetworkReq:
                    prvHandleDeleteNetworkRequest( pBuffer, length );
                    break;

                default:
                    IotLogWarn( "Invalid request type ( %d ) received, discarding the message", requestType );
                    break;
            }
        }

        /* Do an empty read to flush the buffer. */
        IotBleDataTransfer_Receive( pChannel, NULL, length );
    }
}

/*-----------------------------------------------------------*/

static BaseType_t prvHandleListNetworkRequest( const uint8_t * pData,
                                               size_t length )
{
    BaseType_t status;
    IotBleWifiProvMessage_t message = { 0 };

    message.type = IotBleWiFiProvListNetworksReq;

    status = IotBleWiFiProv_DeserializeListNetworkRequest( pData, length, &message.m.listNetworkRequest );
    
    if( status == pdTRUE )
    {
        IotLogDebug( "List network request parameters: max networks = %d, timeout = %d",
                      message.m.listNetworkRequest.scanSize,
                      message.m.listNetworkRequest.scanTimeoutMS );

        status =  xQueueSend( wifiProvisioning.queue, &message, 0 );
        if( status != pdTRUE )
        {
            IotLogError( "Failed to enqueue list network request, queue is full." );
        }
    }
    else
    {
        IotLogError( "Failed to deserialize list network request." );
    }

    return status;
}

/*-----------------------------------------------------------*/


static BaseType_t prvHandleAddNetworkRequest( const uint8_t * pData,
                                               size_t length )
{
    BaseType_t status;
    IotBleWifiProvMessage_t message = { 0 };

    message.type = IotBleWiFiProvAddNetworkReq;

    status = IotBleWiFiProv_DeserializeAddNetworkRequest( pData, length, &message.m.addNetworkRequest );
    
    if( status == pdTRUE )
    {
        IotLogDebug( "Add network request parameters, SSID: %.*s, index: %d, connect: %d",
                         message.m.addNetworkRequest.accessPointInfo.ucSSIDLength,
                         ( char * ) message.m.addNetworkRequest.accessPointInfo.ucSSID,
                         message.m.addNetworkRequest.prirorityIndex,
                         message.m.addNetworkRequest.shouldConnect );

        status =  xQueueSend( wifiProvisioning.queue, &message, 0 );
        if( status != pdTRUE )
        {
            IotLogError( "Failed to enqueue add network request, queue is full." );
        }
    }
    else
    {
        IotLogError( "Failed to deserialize add network request." );
    }

    return status;
}

/*-----------------------------------------------------------*/

static BaseType_t prvHandleEditNetworkRequest( const uint8_t * pData,
                                               size_t length )
{
    BaseType_t status;
    IotBleWifiProvMessage_t message = { 0 };

    message.type = IotBleWiFiProvEditNetworkReq;

    status = IotBleWiFiProv_DeserializeEditNetworkRequest( pData, length, &message.m.editNetworkRequest );
    
    if( status == pdTRUE )
    {

        IotLogDebug( "Edit network request parameters, Current index: %d, new index: %d",
                         message.m.editNetworkRequest.currentPriorityIndex,
                         message.m.editNetworkRequest.newPriorityIndex );

        status =  xQueueSend( wifiProvisioning.queue, &message, 0 );
        if( status != pdTRUE )
        {
            IotLogError( "Failed to enqueue edit network request, queue is full." );
        }
    }
    else
    {
        IotLogError( "Failed to deserialize edit network request." );
    }

    return status;
}

/*-----------------------------------------------------------*/

static BaseType_t prvHandleDeleteNetworkRequest( const uint8_t * pData,
                                               size_t length )
{
    BaseType_t status;
    IotBleWifiProvMessage_t message = { 0 };

    message.type = IotBleWiFiProvDeleteNetworkReq;

    status = IotBleWiFiProv_DeserializeDeleteNetworkRequest( pData, length, &message.m.deleteNetworkRequest );
    
    if( status == pdTRUE )
    {

         IotLogDebug( "Delete network request parameters, index: %d",
                         message.m.deleteNetworkRequest.priorityIndex );

        status =  xQueueSend( wifiProvisioning.queue, &message, 0 );
        if( status != pdTRUE )
        {
            IotLogError( "Failed to enqueue delete network request, queue is full." );
        }
    }
    else
    {
        IotLogError( "Failed to deserialize delete network request." );
    }

    return status;
}

/*-----------------------------------------------------------*/

static void prvSendStatusResponse( IotBleWifiProvMessageType_t responseType,
                                 WIFIReturnCode_t status )
{
    uint8_t * pBuffer = NULL;
    size_t mesgLen = 0;
    bool ret;

    ret = IotBleWifiProv_SerializeStatusResponse( responseType, status, NULL, &mesgLen );

    if( ret == true )
    {
        IotLogDebug( "Respone type %d, serialized message length %d.", responseType, mesgLen );
        pBuffer = pvPortMalloc( mesgLen );

        if( pBuffer != NULL )
        {
            ret = IotBleWifiProv_SerializeStatusResponse( responseType, status, pBuffer, &mesgLen );
        }
        else
        {
            IotLogError("Failed to allocate message for serializing response type %d.", responseType );
            ret = false;
        }
    }

    if( ret == true )
    {
        if( IotBleDataTransfer_Send( wifiProvisioning.pChannel, pBuffer, mesgLen ) != mesgLen )
        {
            IotLogError( "Failed to send response type %d through ble connection.", responseType );
        }
    }
    else
    {
        IotLogError( "Failed to serialize status response, error = %d.\n", ret );
    }

    if( pBuffer != NULL )
    {
        vPortFree( pBuffer );
    }
}

/*-----------------------------------------------------------*/

static void prvSendListNetworkResponse( IotBleWiFiProvListNetworkResponse_t * pResponse )
{
    uint8_t * message = NULL;
    size_t messageLen = 0;
    bool status;


    status = IotBleWifiProv_SerializeListNetworkResponse( pResponse, NULL, &messageLen );

    if( status == true )
    {
        message = pvPortMalloc( messageLen );

        if( message != NULL )
        {
            status  = IotBleWifiProv_SerializeListNetworkResponse( pResponse, message, &messageLen );
        }
        else
        {
            IotLogError("Not enough memory to serialize list network response." );
            status = false;
        }
    }
    else
    {
        IotLogError( "Failed to serialize list network response for SSID:%.*s", pResponse->SSIDLength, ( char * ) pResponse->pSSID );
    }


    if( status == true )
    {
        if( IotBleDataTransfer_Send( wifiProvisioning.pChannel, message, messageLen ) != messageLen )
        {
            IotLogError( "Failed to send list network response for SSID:%.*s", pResponse->SSIDLength, ( char * ) pResponse->pSSID );
        }
    }
    
    if( message != NULL )
    {
        vPortFree( message );
    }
}

/*-----------------------------------------------------------*/


static void prvSendSavedNetwork( WIFINetworkProfile_t *pNetwork, uint16_t priority )
{

    IotBleWiFiProvListNetworkResponse_t response = LIST_NETWORK_RESPONSE_DEFAULT;

    response.pSSID = pNetwork->ucSSID;
    response.SSIDLength = pNetwork->ucSSIDLength;
    response.pBSSID = pNetwork->ucBSSID;
    response.BSSIDLength = wificonfigMAX_BSSID_LEN;
    response.connected = ( wifiProvisioning.connectedIdx == priority );
    response.security = pNetwork->xSecurity;
    response.priorityIndex = ( int32_t ) priority;

    prvSendListNetworkResponse( &response );

}

/*-----------------------------------------------------------*/

static void prvSendScanNetwork( WIFIScanResult_t *pNetwork )
{

    IotBleWiFiProvListNetworkResponse_t response =  LIST_NETWORK_RESPONSE_DEFAULT;

    response.pSSID = pNetwork->ucSSID;
    response.SSIDLength = pNetwork->ucSSIDLength;
    response.pBSSID = pNetwork->ucBSSID;
    response.BSSIDLength = wificonfigMAX_BSSID_LEN;
    response.RSSI = pNetwork->cRSSI;
     /**
     * Scan hidden network is currently not supported for WiFi provisioning over BLE.
     */
    response.hidden = false;
    response.security = pNetwork->xSecurity;

    prvSendListNetworkResponse( &response );
}
/*-----------------------------------------------------------*/

static void prvProcessListNetworkRequest( IotBleWifiProvListNetworksRequest_t *pRequest )
{
    WIFINetworkProfile_t profile;
    uint16_t priority, numSavedNetworks, index;
    uint32_t networks_found = 0;
    WIFIReturnCode_t status;

    numSavedNetworks = IotBleWiFiProvPal_GetNumProvisionedNetworks();

    /* WiFi provisioning app requires networks ordered in priority descending order. */
    for ( priority = numSavedNetworks - 1; priority >= 0; priority-- )
    {
        status = IotBleWiFiProvPal_GetNetwork( priority, &profile );

        if( status == eWiFiSuccess )
        {
            prvSendSavedNetwork( &profile, ( numSavedNetworks - priority - 1 ) );
        }
    }

    memset( scanNetworks, 0x00, sizeof( WIFIScanResult_t ) * IOT_BLE_WIFI_PROVISIONIG_MAX_SCAN_NETWORKS );

    status = WIFI_Scan( scanNetworks, pRequest->scanSize );

    if( status == eWiFiSuccess )
    {
        for( index = 0; index < pRequest->scanSize; index++ )
        {
            if( scanNetworks[ index ].ucSSIDLength > 0 )
            {
                networks_found++;
                prvSendScanNetwork( &scanNetworks[ index ] );
            }
        }

        if( networks_found == 0 )
        {
            prvSendStatusResponse( IotBleWiFiProvListNetworksResp, status );
        }
    }
    else
    {
        prvSendStatusResponse( IotBleWiFiProvListNetworksResp, status );
    }
}

/*-----------------------------------------------------------*/

static void prvProcessAddNetworkRequest( IotBleWifiProvAddNetworkRequest_t *pRequest )
{
    WIFIReturnCode_t status = eWiFiFailure;
    WIFINetworkProfile_t network = { 0 };
    WIFINetworkParams_t params = { 0 };
    uint16_t priority, numSavedNetworks = IotBleWiFiProvPal_GetNumProvisionedNetworks();

    if( pRequest->isProvisioned == true )
    {
        if( pRequest->prirorityIndex >= 0 && pRequest->prirorityIndex < numSavedNetworks )
        {
            status = IotBleWiFiProvPal_GetNetwork( ( numSavedNetworks - pRequest->prirorityIndex - 1 ), &network );

            if( status == eWiFiSuccess )
            {
                memcpy( params.ucSSID, network.ucSSID, network.ucSSIDLength );
                params.ucSSIDLength = network.ucSSIDLength;
                params.xSecurity  = network.xSecurity;
                memcpy( params.xPassword.xWPA.cPassphrase, network.cPassword, network.ucPasswordLength );
                params.xPassword.xWPA.ucLength = network.ucPasswordLength;
                params.ucChannel = 0;  /* Not used. */
            
                status = WIFI_ConnectAP( &params );
            }
        }
    }
    else
    {

        memcpy( params.ucSSID, pRequest->accessPointInfo.ucSSID, pRequest->accessPointInfo.ucSSIDLength );
        params.ucSSIDLength = pRequest->accessPointInfo.ucSSIDLength;
        params.xSecurity  = pRequest->accessPointInfo.xSecurity;
        memcpy( params.xPassword.xWPA.cPassphrase, pRequest->accessPointInfo.cPassword, pRequest->accessPointInfo.ucPasswordLength );
        params.xPassword.xWPA.ucLength = pRequest->accessPointInfo.ucPasswordLength;
        params.ucChannel = 0;  /* Not used. */

        status = WIFI_ConnectAP( &params );

        if( status == eWiFiSuccess )
        {
            status = IotBleWiFiProvPal_AddNetwork( &pRequest->accessPointInfo, &priority );
        }

        if( status == eWiFiSuccess )
        {
            wifiProvisioning.connectedIdx = ( ( IotBleWiFiProvPal_GetNumProvisionedNetworks() - 1 ) - priority );

        }
    }

    prvSendStatusResponse( IotBleWiFiProvAddNetworkResp, status );
}

/*-----------------------------------------------------------*/

static void prvProcessDeleteNetworkRequest( IotBleWifiProvDeleteNetworkRequest_t * pRequest )
{
    WIFIReturnCode_t status = eWiFiFailure;
    uint16_t numNetworks = IotBleWiFiProvPal_GetNumProvisionedNetworks();

    if( ( pRequest->priorityIndex >= 0 ) && ( pRequest->priorityIndex < numNetworks ) )
    {
        status = IotBleWiFiProvPal_PopNetwork( ( ( numNetworks - 1 ) - pRequest->priorityIndex ), NULL );
    }

    if( status == eWiFiSuccess )
    {
        if( wifiProvisioning.connectedIdx == pRequest->priorityIndex )
        {
            ( void ) WIFI_Disconnect();
            wifiProvisioning.connectedIdx = IOT_BLE_WIFI_PROV_NETWORK_INDEX_DONT_USE;
        }
    }

    prvSendStatusResponse( IotBleWiFiProvDeleteNetworkResp, status );
}

/*-----------------------------------------------------------*/

static void prvProcessDeleteNetworkRequest( IotBleWifiProvEditNetworkRequest_t * pRequest )
{
    WIFIReturnCode_t status = eWiFiFailure;
    uint16_t numNetworks = IotBleWiFiProvPal_GetNumProvisionedNetworks();

    if( ( pRequest->currentPriorityIndex >= 0 ) && ( pRequest->currentPriorityIndex <  numNetworks ) &&
        ( pRequest->newPriorityIndex >= 0 ) && ( pRequest->newPriorityIndex < numNetworks ) )
    {
        status = IotBleWiFiProvPal_ChangeNetworkPriority( ( ( numNetworks - 1 ) - pRequest->currentPriorityIndex ),
                                                          ( ( numNetworks - 1 ) - pRequest->newPriorityIndex ) );
    }

    if( status == eWiFiSuccess )
    {
        if( pRequest->currentPriorityIndex = wifiProvisioning.connectedIdx )
        {
            wifiProvisioning.connectedIdx = pRequest->newPriorityIndex;
        }
    }

    prvSendStatusResponse( IotBleWiFiProvEditNetworkResp, status );
}

/*-----------------------------------------------------------*/


bool IotBleWifiProv_Init( void )
{
    bool status = false;
    WIFIReturnCode_t palStatus = eWiFiSuccess;

    if( status == true )
    {
        wifiProvisioning.pChannel = IotBleDataTransfer_Open( IOT_BLE_DATA_TRANSFER_SERVICE_TYPE_WIFI_PROVISIONING );

        if( wifiProvisioning.pChannel != NULL )
        {
            status = IotBleDataTransfer_SetCallback( wifiProvisioning.pChannel, prvTransportReceiveCallback, NULL );
        }
        else
        {
            IotLogError( "Failed to initialize transport for BLE WiFi provisioning." );
            status = false;
        }
    }

    if( status = true )
    {
        /* Create a queue of size 1 to only allow one request at a time. */
        wifiProvisioning.queue = xQueueCreate( 1U, sizeof( IotBleWifiProvMessage_t ) );
        if( wifiProvisioning.queue == NULL )
        {
            IotLogError( "Failed to initialize queue for BLE WiFi provisioning. " );
            status = false;
        }
    }

     wifiProvisioning.connectedIdx = IOT_BLE_WIFI_PROV_NETWORK_INDEX_DONT_USE;

    if( status == true )
    {
        palStatus = IotBleWiFiProvPal_Initialize();
        if( palStatus != eWiFiSuccess )
        {
            IotLogError("Failed to initialize PAL layer for BLE wifi provisioning." );
        }
    }

    return status;
}

/*--------------------------------------------------------------------------------*/

uint32_t IotBleWifiProv_GetNumNetworks( void )
{
    return IotBleWiFiProvPal_GetNumProvisionedNetworks();
}
/*-----------------------------------------------------------*/

bool IotBleWifiProv_Connect( uint32_t priority )
{
    WIFIReturnCode_t status;
    bool ret = false;
    WIFINetworkProfile_t network = { 0 };
    WIFINetworkParams_t params = { 0 };
    uint16_t numNetworks = IotBleWiFiProvPal_GetNumProvisionedNetworks();

    status = IotBleWiFiProvPal_GetNetwork( ( uint16_t ) priority, &network );
    if( status == eWiFiSuccess )
    {
        memcpy( params.ucSSID, network.ucSSID, network.ucSSIDLength );
        params.ucSSIDLength = network.ucSSIDLength;
        params.xSecurity  = network.xSecurity;
        memcpy( params.xPassword.xWPA.cPassphrase, network.cPassword, network.ucPasswordLength );
        params.xPassword.xWPA.ucLength = network.ucPasswordLength;
        params.ucChannel = 0;  /* Not used. */
        status = WIFI_ConnectAP( &params );
    }

    if( status == eWiFiSuccess )
    {
        wifiProvisioning.connectedIdx = ( ( IotBleWiFiProvPal_GetNumProvisionedNetworks() - 1 ) - priority );
        ret = true;
    }

    return ret;
}

/*-----------------------------------------------------------*/

bool IotBleWifiProv_EraseAllNetworks( void )
{
    WIFIReturnCode_t palStatus;

    palStatus = IotBleWiFiProvPal_EraseAllNetworks();
    if( palStatus != eWiFiSuccess )
    {
        IotLogError( "Failed to delete all WiFi networks." );
    }
    wifiProvisioning.connectedIdx = IOT_BLE_WIFI_PROV_NETWORK_INDEX_DONT_USE;

    return ( palStatus == eWiFiSuccess );
}

/*-----------------------------------------------------------*/

void IotBleWifiProv_Deinit( void )
{
    if( wifiProvisioning.pChannel != NULL )
    {
        IotBleDataTransfer_Close( wifiProvisioning.pChannel );
        IotBleDataTransfer_Reset( wifiProvisioning.pChannel );
    }

    memset( &wifiProvisioning, 0x00, sizeof( IotBleWifiProvService_t ) );
}

/* Provide access to private members for testing. */
#ifdef FREERTOS_ENABLE_UNIT_TESTS
    #include "iot_ble_wifi_prov_test_access_define.h"
#endif

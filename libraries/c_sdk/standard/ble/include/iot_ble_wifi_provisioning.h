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
 * @file iot_ble_wifi_provisioning.h
 * @brief WiFi provisioning Gatt service.
 */

#ifndef IOT_BLE_WIFI_PROVISIONING_H_
#define IOT_BLE_WIFI_PROVISIONING_H_

#include "iot_ble.h"
#include "iot_ble_data_transfer.h"
#include "iot_wifi.h"
#include "platform/iot_threads.h"


/**
 * @ingroup ble_data_types_enums
 * @brief This enumeration defines the message types exchanged between a WiFi provisioning application
 * and the device.
 */
typedef enum IotBleWifiProvMessageType
{
    IotBleWiFiProvListNetworksReq = 1,
    IotBleWiFiProvListNetworksResp,
    IotBleWiFiProvAddNetworkReq,
    IotBleWiFiProvAddNetworkResp,
    IotBleWiFiProvEditNetworkReq,
    IotBleWiFiProvEditNetworkResp,
    IotBleWiFiProvDeleteNetworkReq,
    IotBleWiFiProvDeleteNetworkResp
} IotBleWifiProvMessageType_t;
/**
 * @ingroup ble_datatypes_structs
 * @brief Defines the list wifi networks request message structure sent from the provisioining app to the device.
 * The request is used to list already provisioned networks as well as to scan nearby access points.
 */
typedef struct IotBleWifiProvListNetworksRequest
{
    int16_t scanSize;                       /**< Max WiFi access points to scan in one request */
    int16_t scanTimeoutMS;                 /**< Timeout in milliseconds for scanning */
} IotBleWifiProvListNetworksRequest_t;

/**
 * @ingroup ble_datatypes_structs
 * @brief Defines add wifi network request message structure sent from the provisioining app to the device.
 * The request is used to provision a new access point with the credentials or to connect to an already provisioned
 * access point. Inorder to connect to an already provisioned access point, a valid accessPointStoredIndex needs
 * to be provided. Setting flag connectToAccessPoint to true results in the  device first connecting to access point successfully before
 * provisioning it in the flash.
 */
typedef struct IotBleWiFiProvAddNetworkRequest
{
    WIFINetworkProfile_t accessPointInfo;       /**< The configuration for the new WIFI access point. */
    int16_t prirorityIndex;                    /**< Prirority index of an already provisioned WiFi access point. */
    bool isProvisioned : 1;                    /**< true if the newtwork is already provisioned, a valid pirority index should be provided. */
    bool shouldConnect : 1;                    /**< true if the access point needs to be connected before provisioning. */
} IotBleWifiProvAddNetworkRequest_t;

/**
 * @ingroup ble_datatypes_structs
 * @brief Defines edit wifi network request message structure sent from provisioning app to the device. The request
 * is used to change the priority index for a provisioned access point. Priority index ranges from 0 (Max priority) to
 * wificonfigMAX_NETWORK_PROFILES - 1 (Minimum priority).
 */
typedef struct IotBleWifiProvEditNetworkRequest
{
    int16_t currentPriorityIndex; /**< Current Prioruty index of the provisioned WiFi network.*/
    int16_t newPriorityIndex;     /**< New priority index of the provisioned WiFi network. */
} IotBleWifiProvEditNetworkRequest_t;

/**
 * @ingroup ble_datatypes_structs
 * @brief Defines delete access point request message structure sent from provisioning app to the device. The request
 * is used to delete a provisioned access point at an index. Index ranges from 0 (Max priority) to
 * wificonfigMAX_NETWORK_PROFILES - 1 (Minimum priority)
 */
typedef struct IotBleWifiProvDeleteNetworkRequest
{
    int16_t priorityIndex; /**< Priority index of the provisioned access point to be deleted. */
} IotBleWifiProvDeleteNetworkRequest_t;

/**
 * @ingroup ble_datatypes_structs
 * @brief Defines the structure used to hold the wifi provisioning information.
 */
typedef struct IotBleWiFiProvListNetworkResponse
{
    const uint8_t * pSSID;   /**< @brief The SSID of the WiFi network. */
    size_t SSIDLength;       /**< @brief The SSID length in bytes. */
    const uint8_t * pBSSID;  /**< BSSID of the Wi-Fi network. */
    size_t BSSIDLength;      /**< BSSID of the Wi-Fi network. */
    int32_t priorityIndex;   /**< The index at which to save the network. */
    int8_t RSSI;             /**< The signal strength of the Wi-Fi network. */
    WIFISecurity_t security; /**< The security type of the Wi-Fi network. */
    WIFIReturnCode_t status; /**< The status of the Wi-Fi network. */
    bool hidden;             /**< A flag to signify whether this is an hidden network. */
    bool connected;          /**< A flag to signify whether this network is connected. */

} IotBleWiFiProvListNetworkResponse_t;

/**
 * @ingroup ble_datatypes_enums
 * @brief Events Used by the WIFI provisioning service.
 */
typedef enum
{
    IOT_BLE_WIFI_PROV_CONNECT = 0x01,   /**< IOT_BLE_WIFI_PROV_CONNECT Set When WiFi provisioning service connects to one of the saved networks in the flash */ /*!< IOT_BLE_WIFI_PROV_CONNECT */
    IOT_BLE_WIFI_PROV_CONNECTED = 0x02, /**< IOT_BLE_WIFI_PROV_CONNECTED Set when successfully connected to a WiFi Network */                                 /*!< IOT_BLE_WIFI_PROV_CONNECTED */
    IOT_BLE_WIFI_PROV_DELETED = 0x4,    /**<  eWIFIProvStopped Set when WiFi provisioning is deleted */                                                          /*!< IOT_BLE_WIFI_PROV_DELETED */
    IOT_BLE_WIFI_PROV_FAILED = 0x8      /**< IOT_BLE_WIFI_PROV_FAILED Set When WiFi provisioning failed */                                                         /*!< IOT_BLE_WIFI_PROV_FAILED */
} IotBleWifiProvEvent_t;


typedef struct
{

    bool ( * getMessageType )( const uint8_t * pMessage,
                               size_t length,
                               IotBleWifiProvMessageType_t * pRequeustType );

    bool ( *deseiralizeListNetworkRequest ) ( const uint8_t * pData,
                                              size_t length,
                                              IotBleWifiProvListNetworksRequest_t * pListNetworksRequest );

    bool ( * deserializeAddNetworkRequest )  (  const uint8_t * pData,
                                                size_t length,
                                                IotBleWifiProvAddNetworkRequest_t * pAddNetworkReq );

    bool ( * deserializeEditNetworkRequest )  (  const uint8_t * pData,
                                                size_t length,
                                                IotBleWifiProvEditNetworkRequest_t * pEditNetworkReq );
    bool ( * deserializeDeleteNetworkRequest ) ( const uint8_t * pData,
                                                 size_t length,
                                                 IotBleWifiProvDeleteNetworkRequest_t * pDeleteNetworkRequest );

    bool ( *serializeListNetworkResponse ) ( IotBleWiFiProvListNetworkResponse_t * pNetworkInfo,
                                             uint8_t * pBuffer,
                                             size_t * plength );

    bool ( *serializeStatusResponse )( IotBleWifiProvMessageType_t responseType,
                                              WIFIReturnCode_t status,
                                              uint8_t * pBuffer,
                                              size_t * plength );

   
} IotBleWifiProvSerializerInterface_t;


/**
 * @functions_page{iotblewifiprov, WiFi Provisioning}
 * @functions_brief{GATT Service for WiFi Provisioning}
 * - @function_name{iotblewifiprov_function_init}
 * @function_brief{iotblewifiprov_function_init}
 * - @function_name{iotblewifiprov_function_start}
 * @function_brief{iotblewifiprov_function_start}
 * - @function_name{iotblewifiprov_function_stop}
 * @function_brief{iotblewifiprov_function_stop}
 * - @function_name{iotblewifiprov_function_getnumnetworks}
 * @function_brief{iotblewifiprov_function_getnumnetworks}
 * - @function_name{iotblewifiprov_function_connect}
 * @function_brief{iotblewifiprov_function_connect}
 * - @function_name{iotblewifiprov_function_eraseallnetworks}
 * @function_brief{iotblewifiprov_function_eraseallnetworks}
 * - @function_name{iotblewifiprov_function_delete}
 * @function_brief{iotblewifiprov_function_delete}
 */

/**
 * @function_page{IotBleWifiProv_Init,iotblewifiprov,init}
 * @function_snippet{iotblewifiprov,init,this}
 * @copydoc IotBleWifiProv_Init
 * @function_page{IotBleWifiProv_GetNumNetworks,iotblewifiprov,getnumnetworks}
 * @function_snippet{iotblewifiprov,getnumnetworks,this}
 * @copydoc IotBleWifiProv_GetNumNetworks
 * @function_page{IotBleWifiProv_Connect,iotblewifiprov,connect}
 * @function_snippet{iotblewifiprov,connect,this}
 * @copydoc IotBleWifiProv_Connect
 * @function_page{IotBleWifiProv_EraseAllNetworks,iotblewifiprov,eraseallnetworks}
 * @function_snippet{iotblewifiprov,eraseallnetworks,this}
 * @copydoc IotBleWifiProv_EraseAllNetworks
 * @function_page{IotBleWifiProv_Delete,iotblewifiprov,delete}
 * @function_snippet{iotblewifiprov,delete,this}
 * @copydoc IotBleWifiProv_Delete
 */

/**
 * @brief Initialize wifi provisioning over BLE service.
 *
 * Creates necessary data structures for the service. Opens ble data transfer channel and listens
 * for incoming messages from the channel.
 *
 * @return true if the initialization succeeded.
 *         false if the initialization failed.
 */
/* @[declare_iotblewifiprov_init] */
bool IotBleWifiProv_Init( void );
/* @[declare_iotblewifiprov_init] */

/**
 * @brief Gets the total number of provisioned networks.
 *
 *
 * @return Number of provisioned networks
 */
/* @[declare_iotblewifiprov_getnumnetworks] */
uint32_t IotBleWifiProv_GetNumNetworks( void );
/* @[declare_iotblewifiprov_getnumnetworks] */

/**
 * @brief Connects to one of the saved networks in priority order.
 *
 * Example usage of this API to connect to provisioned networks in priority order:
 * <pre>
 *
 * uint32_t numNetworks =  IotBleWifiProv_GetNumNetworks(); //Gets the number of provisioned networks
 * uint16_t priority;
 * TickType_t  xNetworkConnectionDelay = pdMS_TO_TICKS( 1000 ); //1 Second delay
 *
 * for( priority = 0; priority < numNetworks; priority++ ) //Priority is always in descending order/0 being highest priority.
 * {
 *      bool ret = IotBleWifiProv_Connect( priority );
 *
 *      if( ret == true )
 *      {
 *          break;
 *      }
 *
 *      vTaskDelay( xNetworkConnectionDelay );
 * }
 * </pre>
 *
 * @return Returns the connected network index in the flash.
 */
/* @[declare_iotblewifiprov_connect] */
bool IotBleWifiProv_Connect( uint32_t networkIndex );
/* @[declare_iotblewifiprov_connect] */

/**
 * @brief Erase all wifi networks.
 *
 * @return true if success, false otherwise.
 */
/* @[declare_iotblewifiprov_eraseallnetworks] */
bool IotBleWifiProv_EraseAllNetworks( void );
/* @[declare_iotblewifiprov_eraseallnetworks] */

/**
 * @brief Tear down WIFI provisioning service
 *
 */
/* @[declare_iotblewifiprov_delete] */
void IotBleWifiProv_Deinit( void );
/* @[declare_iotblewifiprov_delete] */

/**
 * @brief Initialize platform layer for storing and retrieving WiFi credentials in priority order.
 * The platform layer should ensure that credentials are stored in a contiguous prioirity order starting
 * from 0(lowest priority) to MAX_SUPPORTED_NETWORKS - 1 (highest priority). It should
 * ensure that deleting or changing priority of a network, should not leave any holes in between.
 * 
 * @return eWiFiSuccess on successfully initializing the platform layer and currently stored access points
 *         be accessible in priority order.
 */
WIFIReturnCode_t IotBleWiFiProvPal_Initialize( void );

/**
 * @brief PAL API to store a new network credential. The new credential should be stored at the higest
 * priority among currently stored networks.
 * 
 * @param[in] pNetwork Details of the network to be stored.
 * @param[out] priority Priority at which the network is stored.
 * @return eWiFiSuccess If the network credentials are stored successfully.
 *         eWiFiFailure when the limit of number of stored networks has reached.
 */
WIFIReturnCode_t IotBleWiFiProvPal_AddNetwork( WIFINetworkProfile_t * pNetwork, uint16_t * priority );

/**
 * @brief PAL API to insert a new network credential at a given priority value. This should shift the 
 *  priority of all the networks with a higher priority than the given priority.
 * 
 * @param[in] pNetwork Details of the network to be stored.
 * @param[in] priority Priority of the stored .
 * @return eWiFiSuccess on successfully storing the new network at given priority.
 *         eWiFiFailure when the limit of number of stored networks has reached.
 */
WIFIReturnCode_t IotBleWiFiProvPal_InsertNetwork( WIFINetworkProfile_t * pNetwork, uint16_t priority );

/**
 * @brief PAL API to change the priority of a stored WiFi network. Priority of all networks in between
 * the current priority and the new priority will be adjusted.
 * 
 *
 * @param[in] currentPriority Current priority value of the WiFi network to be modified.
 * @param[in] newPriority New priority value for the WiFi network value.
 * @return eWiFiSuccess on successfully modified the current priority.
 *         eWiFiFailure if the current priority or new priority values are invalid.
 */
WIFIReturnCode_t IotBleWiFiProvPal_ChangeNetworkPriority( uint16_t currentPriority, uint16_t newPriority );

/**
 * @brief PAL API to retrieve the network at a given priority.
 * 
 * @param[in] pNetwork Current priority value of the WiFi network to be modified.
 * @param[in] newPriority New priority value for the WiFi network value.
 * @return eWiFiSuccess on successfully modified the current priority.
 *         eWiFiFailure if the current priority or new priority values are invalid.
 */
WIFIReturnCode_t IotBleWiFiProvPal_GetNetwork( WIFINetworkProfile_t * pNetwork, uint16_t priority );

/**
 * @brief PAL API to pop the network at a given priority. API will delete the network at given priority
 * and optionally return this to the user. Priority of all networks following this should be shifted.
 * 
 * @param[in] priority Priority of the network to be popped.
 * @param[out] pNetwork Optional parameter, if not null it will be populated with the details of the network that's popped.
 * @return eWiFiSuccess on successfully deleted network at a given priority.
 *         eWiFiFailure if the priority is invalid.
 */
WIFIReturnCode_t IotBleWiFiProvPal_PopNetwork( uint16_t priority, WIFINetworkProfile_t *pNetwork );

/**
 * @brief PAL API to get the total number of networks provisioned.
 * @return Returns the number of networks provisioned.
 */
uint16_t IotBleWiFiProvPal_GetNumProvisionedNetworks( void );

/**
 * @brief PAL API to erase all the provisioned networks.
 * 
 * @return eWiFiSuccess on successfully erasing all provisioned networks.
 */
WIFIReturnCode_t IotBleWiFiProvPal_EraseAllNetworks( void );

#endif /* _AWS_BLE_WIFI_PROVISIONING_H_ */

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
 * @file iot_wifi_provisioning_pal.c
 * @brief PAL layer for WiFi provisioning.
 */
#include "FreeRTOS.h"
#include "iot_wifi.h"

/**
 * @brief Macro to check if provided network index for an operation is within range.
 */
#define IS_WITHIN_RANGE( slot )    ( slot <= nextFreeSlot )

/**
 * @brief Macro to check if a given priority index is occupied.
 */
#define IS_OCCUPIED( slot )    ( wifiSlots[ slot ] != 0 )

/**
 * @brief Macro to check if all indexes are occupied.
 */
#define ALL_SLOTS_OCCUPIED( )     ( nextFreeSlot >= ( wifiConfigMAX_NETWORK_PROFILES - 1 ) )

static uint16_t wifiSlots[ wifiConfigMAX_NETWORK_PROFILES ] = { 0 };

static uint8_t nextFreeSlot = 0;

static WIFIReturnCode_t prvMoveSlot( uint8_t currentSlot, uint8_t newSlot )
{
    WIFIReturnCode_t status = eWiFiSuccess;
    uint16_t index = 0;
    WIFINetworkProfile_t network = { 0 };

    configASSERT( IS_OCCUPIED ( currentSlot ) );
    configASSERT( !IS_OCCUPIED ( newSlot ) );

    /* To move the slot add the slot to flash with the new priority and then delete it. */

    status = WIFI_NetworkGet( &network, wifiSlots[ currentSlot ] );

    if( status == eWiFiSuccess )
    {
        network.ucPriority = newSlot;
        status = WIFI_NetworkAdd( &network,  &index );
    }

    if( status == eWiFiSuccess )
    {
        status = WIFI_NetworkDelete( wifiSlots[ currentSlot ] );
    }

    if( status == eWiFiSuccess )
    {
        wifiSlots[ currentSlot ] = 0;
        wifiSlots[ newSlot ] = index; 
    }

    return status;
}

WIFIReturnCode_t IotBleWiFiProvPal_Initialize( void )
{
    uint16_t index, slot = 0;
    WIFINetworkProfile_t network = { 0 };
    WIFIReturnCode_t status = eWiFiSuccess;

    memset( wifiSlots, 0x00, sizeof( wifiSlots ) );
    nextFreeSlot = 0;
    for( index = 0; index <  wificonfigMAX_NETWORK_PROFILES; index++ )
    {
        memset( &network, 0x00, sizeof( WIFINetworkProfile_t ) );
        status = WIFI_NetworkGet( &network, index );
        if( status == eWiFiSuccess )
        {
            slot = network.ucPriority;
            if( !IS_OCCUPIED( slot ) )
            {
                wifiSlots[ slot ] = index;
            }
            else
            {
                status = eWiFiFailure;
                break;
            }
        }
    }

    return status;
}

WIFIReturnCode_t IotBleWiFiProvPal_AddNetwork( WIFINetworkProfile_t * pNetwork, uint16_t * pPriority )
{
    WIFIReturnCode_t status = eWiFiFailure;
    uint16_t storageIndex = 0;

    if( !ALL_SLOTS_OCCUPIED() )
    {
        pNetwork->ucPriority = nextFreeSlot;

        status = WIFI_NetworkAdd( pNetwork, &storageIndex );

        if( status == eWiFiSuccess )
        {
            wifiSlots[ nextFreeSlot ] = storageIndex;
            if( pPriority != NULL )
            {
                ( * pPriority ) = nextFreeSlot;
            }
            nextFreeSlot++;
        }
    }

    return status;
}

WIFIReturnCode_t IotBleWiFiProvPal_InsertNetwork( WIFINetworkProfile_t * pNetwork, uint16_t priority )
{
    WIFIReturnCode_t status = eWiFiSuccess;
    uint16_t slot, storageIndex = 0;

    if( !ALL_SLOTS_OCCUPIED() && ( IS_WITHIN_RANGE( priority ) ) )
    {
        for( slot = nextFreeSlot; index > priority; slot-- )
        {
            status = prvMoveSlot( ( slot - 1 ), slot );
            if( status != eWiFiSuccess )
            {
                break;
            }
        }

        if( status == eWiFiSuccess )
        {
            pNetwork->ucPriority = priority;
            status = WIFI_NetworkAdd( pNetwork, &storageIndex );
            if( status == eWiFiSuccess )
            {
                wifiSlots[ priority ] = storageIndex;
                nextFreeSlot++;
            }
        }
    }
    else
    {
        status = eWiFiFailure;
    }

    return status;
}

WIFIReturnCode_t IotBleWiFiProvPal_ChangeNetworkPriority( uint16_t currentPriority, uint16_t newPriority )
{
    WIFIReturnCode_t status = eWiFiFailure;
    uint16_t slot, currentIndex = 0, newIndex = 0;
    WIFINetworkProfile_t network = { 0 };

    if( IS_WITHIN_RANGE( currentPriority )  && 
        IS_WITHIN_RANGE( newPriority )      && 
        IS_OCCUPIED( currentPriority )      &&
        ( currentPriority != newPriority ) )
    {
        currentIndex = wifiSlots[ currentPriority ];
        
        wifiSlots[ currentPriority ] = 0;

        if( status == eWiFiSuccess )
        {
            if( currentPriority < newPriority )
            {
                for( slot = currentPriority; slot < newPriority; slot++ )
                {
                    status = prvMoveSlot( slot + 1, slot );
                    if( status != eWiFiSuccess )
                    {
                        break;
                    }
                }
            }
            else if( currentPriority > newPriority )
            {
                for( slot = currentPriority; slot > newPriority; slot-- )
                {
                    status = prvMoveSlot( ( slot - 1 ), slot );
                    if( status != eWiFiSuccess )
                    {
                        break;
                    }
                }
            }

            if( status == eWiFiSuccess )
            {
                status = WIFI_NetworkGet( &network, currentIndex );
            }
            
            if( status == eWiFiSuccess )
            {
                network.ucPriority = newPriority;
                status = WIFI_NetworkAdd( &newPriority, &newIndex );
            }

            if( status == eWiFiSuccess )
            {
                status = WIFI_NetworkDelete( currentIndex );
            }

            if( status == eWiFiSuccess )
            {
                wifiSlots[ newPriority ] = newIndex;
            }
        }
    }

    return status;

}

WIFIReturnCode_t IotBleWiFiProvPal_GetNetwork( uint16_t priority, WIFINetworkProfile_t * pNetwork )
{
    WIFIReturnCode_t status = eWiFiFailure;

    configASSERT( pNetwork != NULL );
    if( IS_WITHIN_RANGE( priority ) && 
        IS_OCCUPIED( priority ) )
    {

        status = WIFI_NetworkGet( pNetwork, wifiSlots[ priority ] );
    }

    return status;
}

WIFIReturnCode_t IotBleWiFiProvPal_PopNetwork( uint16_t priority, WIFINetworkProfile_t *pNetwork )
{
    WIFIReturnCode_t status = eWiFiSuccess;
    uint16_t slot = 0;

    if( IS_WITHIN_RANGE( priority ) && 
        IS_OCCUPIED( priority ) )
    {
        if( pNetwork != NULL )
        {
            status = WIFI_NetworkGet( pNetwork, wifiSlots[ priority ] );
        }

        if( status == eWiFiSuccess )
        {
            status = WIFI_NetworkDelete( wifiSlots[ priority ] );
        }

        if( status == eWiFiSuccess )
        {
            wifiSlots[ priority ] = 0;
            
            for( slot = ( priority + 1 ); slot < nextFreeSlot; slot++ )
            {
                status = prvMoveSlot( slot, ( slot - 1 ) );
                if( status != eWiFiSuccess )
                {
                    break;
                }
            }
        }

        if( status == eWiFiSuccess )
        {
            nextFreeSlot--;
        }
    }
    else
    {
        status = eWiFiFailure;
    }

    return status;
}

uint16_t IotBleWiFiProvPal_GetNumProvisionedNetworks( void )
{
    return nextFreeSlot;
}

WIFIReturnCode_t IotBleWiFiProvPal_EraseAllNetworks( void )
{
    uint16_t slot;
    WIFIReturnCode_t status = eWiFiSuccess;

    /* Start deleting from the end so that there are no holes left behind. */
    for( slot = ( nextFreeSlot - 1 ); slot >= 0; slot-- )
    {
        status = WIFI_NetworkDelete( wifiSlots[ slot ] );
        if( status != eWiFiSuccess )
        {
            break;
        }
        wifiSlots[ slot ] = 0;
        nextFreeSlot--;
    }

    return status;
}
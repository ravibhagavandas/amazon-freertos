/*
 * Copyright 2018 Espressif Systems (Shanghai) PTE LTD
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <stdio.h>
#include <string.h>
#include "iot_i2c.h"
#include "hal/atca_hal.h"
#include "esp_log.h"
#include "esp_err.h"

#ifndef LOG_LOCAL_LEVEL
#define LOG_LOCAL_LEVEL                    ESP_LOG_INFO
#endif

const char* TAG = "IOT_I2C";


#if 0
void hal_i2c_change_baud(ATCAIface iface, uint32_t speed)
{
    esp_err_t rc;
    ATCAIfaceCfg *cfg = atgetifacecfg(iface);
    int bus = cfg->atcai2c.bus;

    conf.master.clk_speed = speed;
    rc = i2c_param_config(i2c_hal_data[bus]->id, &conf);
    if (rc == ESP_OK)
    {

    }      ESP_LOGI(TAG, "Baudrate Changed");
    else
    {
         ESP_LOGE(TAG, "Baudrate Change Failed");
    }
}
#endif


ATCA_STATUS hal_i2c_init(void *hal, ATCAIfaceCfg *cfg)
{
    IotI2CHandle_t i2cHandle = NULL;
    int instanceID = cfg->atcai2c.bus;
    int32_t status = IOT_I2C_SUCCESS;
    ATCAHAL_t *phal = (ATCAHAL_t*)hal;
    IotI2CConfig_t i2cMasterConfig = { 0 };

    i2cHandle = iot_i2c_open( instanceID );

    if( i2cHandle != NULL )
    {
        phal->hal_data = ( void * ) i2cHandle;

        status = iot_i2c_ioctl( i2cHandle, eI2CGetMasterConfig, &i2cMasterConfig  );
        if( status != IOT_I2C_SUCCESS )
        {
            ESP_LOGE(TAG, "Common IO I2C Ioctl Get Master config failed.");
            return ATCA_COMM_FAIL;
        }

        i2cMasterConfig.ulBusFreq = 100000; //cfg->atcai2c.baud;

        status = iot_i2c_ioctl( i2cHandle, eI2CSetMasterConfig, &i2cMasterConfig  );
        if( status != IOT_I2C_SUCCESS )
        {
            ESP_LOGE(TAG, "Common IO I2C Ioctl Set Master config failed.");
            return ATCA_COMM_FAIL;

        }

        ESP_LOGI(TAG, "Opened i2c port %d, handle %p", instanceID, i2cHandle );

        return ATCA_SUCCESS;
    }

    ESP_LOGE(TAG, "Common IO  I2C Open failed.");

    return ATCA_COMM_FAIL;
}

ATCA_STATUS hal_i2c_post_init(ATCAIface iface)
{
    return ATCA_SUCCESS;
}

ATCA_STATUS hal_i2c_send(ATCAIface iface, uint8_t *txdata, int txlength)
{
    IotI2CHandle_t i2cHandle = ( IotI2CHandle_t ) ( iface->hal_data );
    ATCAIfaceCfg *cfg = atgetifacecfg(iface);
    uint8_t i2cAddress = ( cfg->atcai2c.slave_address >> 1 );

    txdata[0] = 0x03;              //Word Address value, Command Token as per datasheet of ATECC508A
    txlength++;
    //ESP_LOGI(TAG, "txdata: %p , txlength: %d", txdata, txlength);
    //ESP_LOG_BUFFER_HEXDUMP(TAG, txdata, txlength, 3);

    //ESP_LOGI(TAG, "In Send, handle %p", i2cHandle );

    if( iot_i2c_ioctl( i2cHandle, eI2CSetSlaveAddr, &i2cAddress ) != IOT_I2C_SUCCESS )
    {
        ESP_LOGE(TAG, "Set slave addr for send failed.");
        return ATCA_COMM_FAIL;
    }

    if( iot_i2c_write_sync( i2cHandle,  txdata, txlength ) != IOT_I2C_SUCCESS )
    {
        ESP_LOGE(TAG, "Write sync for send failed.");
        return ATCA_COMM_FAIL;
    }

    return ATCA_SUCCESS;
}

ATCA_STATUS hal_i2c_receive(ATCAIface iface, uint8_t *rxdata, uint16_t *rxlength)
{
    IotI2CHandle_t i2cHandle = ( IotI2CHandle_t ) ( iface->hal_data );
    ATCAIfaceCfg *cfg = iface->mIfaceCFG;
    uint16_t count;
    uint16_t rxdata_max_size = *rxlength;
    uint8_t i2cAddress = ( cfg->atcai2c.slave_address >> 1 );

    *rxlength = 0;
    if (rxdata_max_size < 1)
    {
        return ATCA_SMALL_BUFFER;
    }

    //ESP_LOGI(TAG, "In receive, handle %p", i2cHandle );

    if( iot_i2c_ioctl( i2cHandle, eI2CSetSlaveAddr, &i2cAddress ) != IOT_I2C_SUCCESS )
    {
        ESP_LOGE(TAG, "Set slave addr for receive failed.");
        return ATCA_COMM_FAIL;
    }

    // Receive count
    count = 1;
    if ( iot_i2c_read_sync( i2cHandle, rxdata, count ) != IOT_I2C_SUCCESS )
    {
         ESP_LOGE(TAG, "Read length for receive failed.");
        return ATCA_COMM_FAIL;
    }

    if (rxdata[0] < ATCA_RSP_SIZE_MIN)
    {
        return ATCA_INVALID_SIZE;
    }

    if (rxdata[0] > rxdata_max_size)
    {
        return ATCA_SMALL_BUFFER;
    }

    count = rxdata[0] - 1;
    // Receive data
    if ( iot_i2c_read_sync( i2cHandle, &rxdata[1], count ) != IOT_I2C_SUCCESS )
    {
        ESP_LOGE(TAG, "Read remaining data for receive failed.");
        return ATCA_COMM_FAIL;
    }

    *rxlength = rxdata[0];

    return ATCA_SUCCESS;
}

ATCA_STATUS hal_i2c_wake(ATCAIface iface)
{
    IotI2CHandle_t i2cHandle = ( IotI2CHandle_t ) ( iface->hal_data );
    ATCAIfaceCfg *cfg = atgetifacecfg(iface);
    uint8_t dummyAddr = 0x00;
    uint8_t i2cAddress = ( cfg->atcai2c.slave_address >> 1 );
    uint8_t response[ 4 ] = { 0 };
    uint8_t responseLength;

//    if (bdrt != 100000) {
//        hal_i2c_change_baud(iface, 100000);
//    }

   //ESP_LOGI(TAG, "In wake, handle %p", i2cHandle );

     // Send the wake by writing to an address of 0x00
    // Create wake up pulse by sending a slave address 0f 0x00.
    // This slave address is sent to device by using a dummy write command.
    if ( iot_i2c_ioctl(i2cHandle, eI2CSetSlaveAddr, &dummyAddr ) != IOT_I2C_SUCCESS )
    {
        ESP_LOGE(TAG, "set dummy slave addr for wake command failed.");
        return ATCA_COMM_FAIL;
    }

     // Dummy Write
    if ( iot_i2c_write_sync(i2cHandle, NULL, 0) != IOT_I2C_SUCCESS )
    {
        // This command will always return NACK.
        // So, the return code is being ignored.
    }

    atca_delay_ms(10);   // wait tWHI + tWLO which is configured based on device type and configuration structure

    responseLength = 4;
    if( hal_i2c_receive(iface, response, &responseLength) != ATCA_SUCCESS )
    {
        ESP_LOGE(TAG, "Read response for wake command failed" );
        return ATCA_COMM_FAIL;
    }
#if 0
    if( iot_i2c_ioctl( i2cHandle, eI2CSetSlaveAddr, &i2cAddress ) != IOT_I2C_SUCCESS )
    {
        ESP_LOGE(TAG, "Set slave addr for wake command failed.");
        return ATCA_COMM_FAIL;
    }

     // Receive data
    if ( iot_i2c_read_sync( i2cHandle, response, 4) != IOT_I2C_SUCCESS )
    {
        ESP_LOGE(TAG, "Read response for wake command failed.");
        return ATCA_RX_NO_RESPONSE;
    }
#endif
   if( hal_check_wake(response, responseLength ) != ATCA_SUCCESS )
   {
       ESP_LOGE(TAG, "ATCA wake response check failed, data:%0x%0x%0x%0x len:%d", response[0], response[1], response[2], response[3], responseLength );
       return ATCA_WAKE_FAILED;
   }

   return ATCA_SUCCESS;
}

ATCA_STATUS hal_i2c_idle(ATCAIface iface)
{
    IotI2CHandle_t i2cHandle = ( IotI2CHandle_t ) ( iface->hal_data );
    ATCAIfaceCfg *cfg = atgetifacecfg(iface);
    uint8_t data = 0x02; // idle word address value
    uint8_t i2cAddress = ( cfg->atcai2c.slave_address >> 1 );

    //ESP_LOGI(TAG, "In idle, handle %p", i2cHandle );

    // Set Slave Address
    if ( iot_i2c_ioctl( i2cHandle, eI2CSetSlaveAddr, &i2cAddress ) != IOT_I2C_SUCCESS )
    {
        ESP_LOGE(TAG, "Set slave address for idle command failed.");
        return ATCA_COMM_FAIL;
    }

    // Send data
    if ( iot_i2c_write_sync( i2cHandle, &data, 1) != IOT_I2C_SUCCESS )
    {
        ESP_LOGE(TAG, "write for idle command failed.");
        return ATCA_COMM_FAIL;
    }

    return ATCA_SUCCESS;
}

ATCA_STATUS hal_i2c_sleep(ATCAIface iface)
{
    IotI2CHandle_t i2cHandle = ( IotI2CHandle_t ) ( iface->hal_data );
    ATCAIfaceCfg *cfg = atgetifacecfg(iface);
    uint8_t data = 0x01; // sleep word address value
    uint8_t i2cAddress = ( cfg->atcai2c.slave_address >> 1 );


    //ESP_LOGI(TAG, "In sleep, handle %p", i2cHandle );

    // Set Slave Address
    if ( iot_i2c_ioctl(i2cHandle, eI2CSetSlaveAddr, &i2cAddress ) != IOT_I2C_SUCCESS )
    {
        ESP_LOGE(TAG, "Set slave address for sleep command failed.");
        return ATCA_COMM_FAIL;
    }

    // Send data
    if ( iot_i2c_write_sync(i2cHandle, &data, 1) != IOT_I2C_SUCCESS )
    {
        ESP_LOGE(TAG, "Write command for sleep failed.");
        return ATCA_COMM_FAIL;
    }

    return ATCA_SUCCESS;
}

ATCA_STATUS hal_i2c_release(void *hal_data)
{
    IotI2CHandle_t i2cHandle = ( IotI2CHandle_t ) ( hal_data );

    //ESP_LOGI(TAG, "In release, handle %p", i2cHandle );


    if( i2cHandle == NULL )
    {
        return ATCA_BAD_PARAM;
    }
    
    if( iot_i2c_close( i2cHandle ) != IOT_I2C_SUCCESS )
    {
        ESP_LOGE(TAG, "Close handle failed.");
        return ATCA_COMM_FAIL;
    }
    
    return ATCA_SUCCESS;
}

ATCA_STATUS hal_i2c_discover_buses(int i2c_buses[], int max_buses)
{
   //ESP_LOGI(TAG, "hal_i2c_discover_buses");
    return ATCA_UNIMPLEMENTED;
}

ATCA_STATUS hal_i2c_discover_devices(int bus_num, ATCAIfaceCfg *cfg, int *found)
{
    //ESP_LOGI(TAG, "hal_i2c_discover_devices");
    return ATCA_UNIMPLEMENTED;
}


/*!
 * \file      spi-board.c
 *
 * \brief     Target board SPI driver implementation
 *
 * \copyright Revised BSD License, see section \ref LICENSE.
 *
 * \code
 *                ______                              _
 *               / _____)             _              | |
 *              ( (____  _____ ____ _| |_ _____  ____| |__
 *               \____ \| ___ |    (_   _) ___ |/ ___)  _ \
 *               _____) ) ____| | | || |_| ____( (___| | | |
 *              (______/|_____)_|_|_| \__)_____)\____)_| |_|
 *              (C)2013-2017 Semtech
 *
 * \endcode
 *
 * \author    Miguel Luis ( Semtech )
 *
 * \author    Gregory Cristian ( Semtech )
 */
#include "FreeRTOS.h"
#include "task.h"
#include "stm32l4xx.h"
#include "gpio.h"
#include "spi.h"
#include "iot_spi.h"

static IotSPIHandle_t SpiHandle[2];

void SpiInit( Spi_t *obj, SpiId_t spiId, PinNames mosi, PinNames miso, PinNames sclk, PinNames nss )
{
    taskENTER_CRITICAL();

    obj->SpiId = spiId;

    if( spiId == SPI_1 )
    {
        GpioInit( &obj->Mosi, mosi, PIN_ALTERNATE_FCT, PIN_PUSH_PULL, PIN_PULL_DOWN, GPIO_AF5_SPI1 );
        GpioInit( &obj->Miso, miso, PIN_ALTERNATE_FCT, PIN_PUSH_PULL, PIN_PULL_DOWN, GPIO_AF5_SPI1 );
        GpioInit( &obj->Sclk, sclk, PIN_ALTERNATE_FCT, PIN_PUSH_PULL, PIN_PULL_DOWN, GPIO_AF5_SPI1 );
        GpioInit( &obj->Nss, nss, PIN_ALTERNATE_FCT, PIN_PUSH_PULL, PIN_PULL_UP, GPIO_AF5_SPI1 );
    }
    else
    {

        GpioInit( &obj->Mosi, mosi, PIN_ALTERNATE_FCT, PIN_PUSH_PULL, PIN_PULL_DOWN, GPIO_AF5_SPI2 );
        GpioInit( &obj->Miso, miso, PIN_ALTERNATE_FCT, PIN_PUSH_PULL, PIN_PULL_DOWN, GPIO_AF5_SPI2 );
        GpioInit( &obj->Sclk, sclk, PIN_ALTERNATE_FCT, PIN_PUSH_PULL, PIN_PULL_DOWN, GPIO_AF5_SPI2 );
        GpioInit( &obj->Nss, nss, PIN_ALTERNATE_FCT, PIN_PUSH_PULL, PIN_PULL_UP, GPIO_AF5_SPI2 );
    }

    SpiHandle[ spiId ] = iot_spi_open( spiId );
    configASSERT( SpiHandle[ spiId ] != NULL )

    if( nss == NC )
    {
        SpiFormat( obj, 8, 0, 0, 0 );
    }
    else
    {
        SpiFormat( obj, 8, 0, 0, 1 );
    }

    SpiFrequency( obj, 10000000 );

    taskEXIT_CRITICAL();
}

void SpiDeInit( Spi_t *obj )
{

    taskENTER_CRITICAL();
    iot_spi_close( SpiHandle[obj->SpiId] );

    SpiHandle[obj->SpiId] = NULL;

    GpioInit( &obj->Mosi, obj->Mosi.pin, PIN_OUTPUT, PIN_PUSH_PULL, PIN_NO_PULL, 0 );
    GpioInit( &obj->Miso, obj->Miso.pin, PIN_OUTPUT, PIN_PUSH_PULL, PIN_PULL_DOWN, 0 );
    GpioInit( &obj->Sclk, obj->Sclk.pin, PIN_OUTPUT, PIN_PUSH_PULL, PIN_NO_PULL, 0 );
    GpioInit( &obj->Nss, obj->Nss.pin, PIN_OUTPUT, PIN_PUSH_PULL, PIN_PULL_UP, 1 );

    taskEXIT_CRITICAL();
}

void SpiFormat( Spi_t *obj, int8_t bits, int8_t cpol, int8_t cpha, int8_t slave )
{
    IotSPIMasterConfig_t spiConfig;
    int32_t ret;

    /**
     * No support in common IO to configure these parameters.
     */
    ( void ) bits;
    ( void ) slave;

    ret = iot_spi_ioctl( SpiHandle[obj->SpiId], eSPIGetMasterConfig, &spiConfig );

    if( ret == IOT_SPI_SUCCESS )
    {
        if( ( cpol ==  0 ) && ( cpha == 0 ) )
        {
            spiConfig.eMode = eSPIMode0;
        }
        else if( ( cpol ==  0 ) && ( cpha == 1 ) )
        {
            spiConfig.eMode = eSPIMode1;

        }
        else if( ( cpol ==  1 ) && ( cpha == 0 ) )
        {
            spiConfig.eMode = eSPIMode2;
        }
        else
        {
            spiConfig.eMode = eSPIMode3;
        }

        spiConfig.eSetBitOrder = eSPIMSBFirst;

        iot_spi_ioctl( SpiHandle[obj->SpiId], eSPISetMasterConfig, &spiConfig );

    }
}

void SpiFrequency( Spi_t *obj, uint32_t hz )
{
    IotSPIMasterConfig_t spiConfig;
    int32_t ret;
    uint32_t divisor = 0;
    uint32_t sysClkTmp = SystemCoreClock;
    uint32_t baudRate;

    while( sysClkTmp > hz )
    {
        divisor++;
        sysClkTmp = ( sysClkTmp >> 1 );

        if( divisor >= 7 )
        {
            break;
        }
    }

    baudRate = ( ( ( divisor & 0x4 ) == 0 ) ? 0x0 : SPI_CR1_BR_2 ) |
            ( ( ( divisor & 0x2 ) == 0 ) ? 0x0 : SPI_CR1_BR_1 ) |
            ( ( ( divisor & 0x1 ) == 0 ) ? 0x0 : SPI_CR1_BR_0 );

    ret = iot_spi_ioctl( SpiHandle[obj->SpiId], eSPIGetMasterConfig, &spiConfig );

    if( ret == IOT_SPI_SUCCESS )
    {
        spiConfig.ulFreq = baudRate;
        iot_spi_ioctl( SpiHandle[obj->SpiId], eSPISetMasterConfig, &spiConfig );
    }
}

uint16_t SpiInOut( Spi_t *obj, uint16_t outData )
{
    uint8_t rxData = 0;
    BaseType_t interruptStatus = 0;

    configASSERT( ( obj != NULL ) && ( SpiHandle[obj->SpiId ] != NULL ) );

    if( xPortIsInsideInterrupt() == pdTRUE )
    {
        interruptStatus = taskENTER_CRITICAL_FROM_ISR();
    }
    else
    {
        taskENTER_CRITICAL( );
    }

    while( iot_spi_transfer_sync( SpiHandle[ obj->SpiId ], ( uint8_t * ) &outData, &rxData, 1 ) == IOT_SPI_BUS_BUSY );

    if( xPortIsInsideInterrupt() == pdTRUE )
    {
        taskEXIT_CRITICAL_FROM_ISR( interruptStatus );
    }
    else
    {
        taskEXIT_CRITICAL( );
    }

    return( rxData );
}


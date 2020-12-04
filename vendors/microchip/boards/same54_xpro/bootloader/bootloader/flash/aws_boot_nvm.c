/*
 * Amazon FreeRTOS Demo Bootloader V1.4.8
 * Copyright (C) 2018 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
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


/* Microchip includes.*/

#include "aws_boot_nvm.h"
#include "peripheral/nvmctrl/plib_nvmctrl.h"
#include "aws_boot_flash_info.h"
/* defines */
#define AWS_NVM_BLOCK_SIZE 8192

/* implementation */



/*-----------------------------------------------------------*/


/*-----------------------------------------------------------*/

void AWS_NVM_ToggleFlashBanks( void )
{
    while(NVMCTRL_IsBusy());
    NVMCTRL_BankSwap();
    while(1);
}


/*-----------------------------------------------------------*/



/*-----------------------------------------------------------*/


/*-----------------------------------------------------------*/

bool AWS_FlashProgramIsSwapped( void )
{
    return true;
}

/*-----------------------------------------------------------*/

bool AWS_FlashErase( uint32_t ucFlashArea )
{
    uint32_t *ptrFlash = NVMCTRL_FLASH_START_ADDRESS + (NVMCTRL_FLASH_SIZE/2) *ucFlashArea + AWS_BOOTLOADER_SIZE;
    uint32_t nSize = ((NVMCTRL_FLASH_SIZE/2) - AWS_BOOTLOADER_SIZE)/AWS_NVM_BLOCK_SIZE;
    return AWS_FlashBlockErase(ptrFlash,nSize);
}

bool AWS_FlashBlockErase(const uint32_t* ptrFlash, int nBlocks)
{
    bool bResult=true;
    uint32_t addr = ptrFlash;
    while(NVMCTRL_IsBusy());
    for(int i=0;((i<nBlocks) && bResult);i++)
    {
       bResult = NVMCTRL_BlockErase(ptrFlash + (AWS_NVM_BLOCK_SIZE*i));
       while(NVMCTRL_IsBusy());
    }
    return bResult;
}

bool AWS_NVM_QuadWordWrite(uint8_t * ptrFlash , uint8_t * pData,int nBlocks) 
{
    uint32_t addr = ptrFlash;
    uint32_t data_addr = pData;
    bool bResult=true;
    uint32_t BlockAddr = ptrFlash;
    BlockAddr =BlockAddr - (BlockAddr % AWS_NVM_BLOCK_SIZE);
    AWS_FlashBlockErase(BlockAddr,1);
    
    for(int i=0;i<nBlocks && bResult; i++)
    {
        bResult = NVMCTRL_QuadWordWrite(pData + i*AWS_NVM_QUAD_SIZE,ptrFlash + i*AWS_NVM_QUAD_SIZE);
        while(NVMCTRL_IsBusy());
    }
    if(memcmp(ptrFlash, pData, nBlocks * AWS_NVM_QUAD_SIZE ))
        return false;
    return bResult;
}

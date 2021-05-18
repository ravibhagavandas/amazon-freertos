/*
 * FreeRTOS Common IO V0.1.3
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

/* Test framework includes. */

#include "FreeRTOS.h"
#include "FreeRTOS_CLI_Console.h"
#include "iot_test_common_io_internal.h"

/* Dimensions of the buffer into which input command is placed. */
#define cmdMAX_INPUT_SIZE     60

/* Dimensions of the buffer into which string output is placed. */
#define cmdMAX_OUTPUT_SIZE    1024


#define UART_TEST_GROUP_NUM      ( 1 )

#define I2C_TEST_GROUP_NUM       ( 11 )


#define TEST_GROUP_ASSISTED_TEST_RU


static BaseType_t prvTestRunner( char * pcWriteBuffer,
                                size_t xWriteBufferLen,
                                const char * pcTestCommand );


void xCommonIOTestCLITask( void *pvParam );

/**
 * Static array into which the commands will be placed from the console.
 */
static char cCommandBuffer[ cmdMAX_INPUT_SIZE ];

/**
 * Static array into which the output of the command will be stored to be written to the console.
 */
static char cOutputBuffer[ cmdMAX_OUTPUT_SIZE ];

/* Structure that defines the "echo_3_parameters" command line command.  This
 * takes exactly three parameters that the command simply echos back one at a
 * time. */
static const CLI_Command_Definition_t xCommonIOTestRunnerCommand =
{
    "iot_tests",
    "\r\nUsage: iot_tests test <test group num> <test number>\r\n",
    prvTestRunner, /* The function to run. */
    3              /* Three parameters are expected. */
};


static BaseType_t prvTestRunner( char * pcWriteBuffer,
                                size_t xWriteBufferLen,
                                const char * pcCommandString )
{
    const char * pcParameter;
    BaseType_t lParameterStringLength;
    int lTestGroupNum, lTestNum;

    /* Verify that first parameter is string test. */
    pcParameter = FreeRTOS_CLIGetParameter( pcCommandString,        /* The command string itself. */
                                            1,                      /* Parameter Number. */
                                            &lParameterStringLength /* Store the parameter string length. */ );

    configASSERT( pcParameter != NULL );
    configASSERT( strncmp(pcParameter, "test", lParameterStringLength ) == 0 );



    /* Get test group number as second parameter */
    pcParameter = FreeRTOS_CLIGetParameter( pcCommandString,        /* The command string itself. */
                                            2,                      /* Parameter Number. */
                                            &lParameterStringLength /* Store the parameter string length. */ );

    configASSERT( pcParameter != NULL );
    lTestGroupNum = atoi(pcParameter);

    /* Get test number as third parameter */
    pcParameter = FreeRTOS_CLIGetParameter( pcCommandString,        /* The command string itself. */
                                            3,                      /* Parameter Number. */
                                            &lParameterStringLength /* Store the parameter string length. */ );

    configASSERT( pcParameter != NULL );
    lTestNum = atoi(pcParameter);

    switch( lTestGroupNum )
    {
        case UART_TEST_GROUP_NUM:
            SET_TEST_IOT_UART_CONFIG( 0 );
            RUN_COMMON_IO_ASSISTED_TEST_GROUP( TEST_IOT_UART, lTestNum );
            break;
        case I2C_TEST_GROUP_NUM:
            SET_TEST_IOT_I2C_CONFIG( 0 );
            RUN_COMMON_IO_ASSISTED_TEST_GROUP( TEST_IOT_I2C, lTestNum );
            break;
        default:
            configASSERT( lTestGroupNum == UART_TEST_GROUP_NUM );
            break;
    }

    return pdFALSE;

}


void vCommonIOTestCLITask( void *pvParam )
{
    xConsoleIO_t * pConsole = (  xConsoleIO_t * ) pvParam;
    configASSERT( pConsole != NULL );

    FreeRTOS_CLIRegisterCommand( &xCommonIOTestRunnerCommand );

    FreeRTOS_CLIEnterConsoleLoop( *pConsole, cCommandBuffer, cmdMAX_INPUT_SIZE, cOutputBuffer, cmdMAX_OUTPUT_SIZE );

}

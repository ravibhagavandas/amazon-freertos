/*!
 * \file      timer.c
 *
 * \brief     Timer objects and scheduling management implementation
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
#include "timer.h"


typedef struct LoraWantimerContext {

	void ( *callback )( void *context );
	void *context;
	TickType_t timerTicks;
} LoraWantimerContext_t;


static void prvCallbackExecutor( TimerHandle_t xTimer  )
{
	LoraWantimerContext_t *pContext = ( LoraWantimerContext_t * ) pvTimerGetTimerID( xTimer );

	if( pContext != NULL && ( pContext->callback != NULL ) )
	{
		pContext->callback( pContext->context );
	}
}

void TimerInit( TimerEvent_t * obj, void ( *callback )( void *context ) )
{
	TickType_t initialPeriod = ( TickType_t )( 1UL );
	LoraWantimerContext_t *timerContext = pvPortMalloc( sizeof( LoraWantimerContext_t ) );
	TimerHandle_t timerHandle;

	configASSERT( timerContext != NULL );
	memset( timerContext, 0x00, sizeof( LoraWantimerContext_t ) );
	timerContext->callback = callback;
	timerHandle = xTimerCreate( "LoraWANTimer",
			initialPeriod,
			pdFALSE,
			timerContext,
			prvCallbackExecutor );

	configASSERT( timerHandle != NULL );
	*obj = timerHandle;
}

void TimerSetContext( TimerEvent_t *obj, void* context )
{
	LoraWantimerContext_t *pContext = ( LoraWantimerContext_t * ) pvTimerGetTimerID( *obj );

	configASSERT( pContext != NULL );
	pContext->context = context;
}

void TimerStart( TimerEvent_t *obj )
{
	LoraWantimerContext_t *pContext = ( LoraWantimerContext_t * ) pvTimerGetTimerID( *obj );
	configASSERT( pContext != NULL );
	vTimerSetReloadMode( *obj, pdTRUE );
	if( xPortIsInsideInterrupt() == pdTRUE )
	{
		xTimerChangePeriodFromISR( *obj, pContext->timerTicks, NULL );
	}
	else
	{
		xTimerChangePeriod( *obj, pContext->timerTicks, portMAX_DELAY );
	}

}

bool TimerIsStarted( TimerEvent_t *obj )
{
    return ( bool ) ( xTimerIsTimerActive( *obj ) );
}

void TimerStop( TimerEvent_t *obj )
{
	if( xPortIsInsideInterrupt() == pdTRUE )
	{
        xTimerStopFromISR( *obj, NULL );
	}
	else
	{
		 xTimerStop( *obj, portMAX_DELAY );
	}
}

void TimerReset( TimerEvent_t *obj )
{
	if( xPortIsInsideInterrupt() == pdTRUE )
	{
        xTimerResetFromISR( *obj, NULL );
	}
	else
	{
		xTimerReset( *obj, portMAX_DELAY );
	}

}

void TimerSetValue( TimerEvent_t *obj, uint32_t value )
{
	TickType_t ticks = pdMS_TO_TICKS( value );
	LoraWantimerContext_t *pContext = ( LoraWantimerContext_t * ) pvTimerGetTimerID( *obj );

	configASSERT( pContext != NULL );

	if( ticks == 0 )
	{
		ticks++;
	}

	xTimerStop( *obj, portMAX_DELAY );
	pContext->timerTicks = ticks;
}

TimerTime_t TimerGetCurrentTime( void )
{
    TickType_t ticks = xTaskGetTickCount();
    return  ( TimerTime_t ) ( ticks / ( ( TickType_t ) configTICK_RATE_HZ ) * 1000 );
}

TimerTime_t TimerGetElapsedTime( TimerTime_t past )
{
	TickType_t nowTicks = xTaskGetTickCount();
	TickType_t pastTicks;
	TimerTime_t elapsed = 0;
    if ( past > 0 )
    {
        pastTicks = pdMS_TO_TICKS( past );
        elapsed = ( TimerTime_t ) ( pdMS_TO_TICKS( nowTicks - pastTicks ));
    }

    return elapsed;
}

TimerTime_t TimerTempCompensation( TimerTime_t period, float temperature )
{
    return RtcTempCompensation( period, temperature );
}

void TimerProcess( void )
{
}

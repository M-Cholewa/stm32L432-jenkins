/*
 * vMainTask.c
 *
 *  Created on: Aug 5, 2023
 *      Author: DoDeptania
 */

/********************** NOTES *************************************************
 ...
 *******************************************************************************/
/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"
#include "vMainTask.h"

//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//#ifdef USERLIB_USE_ENABLED // plik.c
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
/* Private define ------------------------------------------------------------*/

/* Private macros ------------------------------------------------------------*/

/* Private typedef -----------------------------------------------------------*/

/* Private constants ---------------------------------------------------------*/

/* Private variables ---------------------------------------------------------*/
static osThreadId_t vMainTaskHandle;
static const osThreadAttr_t vMainTask_attributes =
{
	.name = "vMainTask",
	.stack_size = 128 * 4,
	.priority = ( osPriority_t ) osPriorityNormal, };

/* Private function declaration ----------------------------------------------*/
static void vMainTask(void *argument);
/* Public functions definition -----------------------------------------------*/
void vMainTask_Setup(void *data)
{
	vMainTaskHandle = osThreadNew( vMainTask, data, &vMainTask_attributes );
}
/* Private functions definition ----------------------------------------------*/
static void vMainTask(void *argument)
{
	for ( ;; )
	{
		osDelay( 1 );
	}
}
//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//#endif /* USERLIB_USE_ENABLED */ // plik.c
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

/** ###################################################################
**     This component module is generated by Processor Expert. Do not modify it.
**     Filename    : Cpu.c
**     Project     : FSFK_K64F
**     Processor   : MK64FN1M0VLL12
**     Component   : MK64FN1M0LL12
**     Version     : Component 01.046, Driver 01.00, CPU db: 3.00.000
**     Repository  : Kinetis
**     Datasheet   : K64P144M120SF5RM, Rev.2, January 2014
**     Compiler    : GNU C Compiler
**     Date/Time   : 2015-11-26, 20:26, # CodeGen: 28
**     Abstract    :
**
**     Settings    :
**
**     Contents    :
**         No public methods
**
**     (c) Freescale Semiconductor, Inc.
**     2004 All Rights Reserved
**
**     Copyright : 1997 - 2015 Freescale Semiconductor, Inc. 
**     All Rights Reserved.
**     
**     Redistribution and use in source and binary forms, with or without modification,
**     are permitted provided that the following conditions are met:
**     
**     o Redistributions of source code must retain the above copyright notice, this list
**       of conditions and the following disclaimer.
**     
**     o Redistributions in binary form must reproduce the above copyright notice, this
**       list of conditions and the following disclaimer in the documentation and/or
**       other materials provided with the distribution.
**     
**     o Neither the name of Freescale Semiconductor, Inc. nor the names of its
**       contributors may be used to endorse or promote products derived from this
**       software without specific prior written permission.
**     
**     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
**     ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
**     WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
**     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
**     ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
**     (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
**     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
**     ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
**     (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
**     SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**     
**     http: www.freescale.com
**     mail: support@freescale.com
** ###################################################################*/
/*!
** @file Cpu.c
** @version 01.00
** @brief
**
*/         
/*!
**  @addtogroup Cpu_module Cpu module documentation
**  @{
*/         

/* MODULE Cpu. */

/* MQX Lite include files */
#include "mqxlite.h"
#include "mqxlite_prv.h"
#include "Cpu.h"
#include "Events.h"
#include "mqx_tasks.h"
#include "Init_Config.h"

#ifdef __cplusplus
extern "C" {
#endif

/*
** ===================================================================
**     Method      :  Common_Init (component MK64FN1M0LL12)
**     Description :
**         Initialization of registers for that there is no 
**         initialization component.
**     Parameters  : None
**     Returns     : Nothing
** ===================================================================
*/
#if CPU_COMMON_INIT
void Common_Init(void)
{
}

#endif /* CPU_COMMON_INIT */

/*
** ===================================================================
**     Method      :  Components_Init (component MK64FN1M0LL12)
**     Description :
**         Initialization of components (with exception for Peripheral
**         Initialization Components which are initialized in 
**         Peripherals_Init() method).
**         For example, if automatic initialization feature 
**         is enabled in LDD component then its Init method call 
**         is executed in Components_Init() method.
**     Parameters  : None
**     Returns     : Nothing
** ===================================================================
*/
#if CPU_COMPONENTS_INIT
void Components_Init(void)
{
  /* SIM_SCGC6: FTM1=1 */
  SIM_SCGC6 |= SIM_SCGC6_FTM1_MASK;
  /* ### BitIO_LDD "LED_RED" component auto initialization. Auto initialization feature can be disabled by component property "Auto initialization". */
  (void)LED_RED_Init(NULL);
  /* ### BitIO_LDD "LED_GREEN" component auto initialization. Auto initialization feature can be disabled by component property "Auto initialization". */
  (void)LED_GREEN_Init(NULL);
  /* ### TimerUnit_LDD "FTM" component auto initialization. Auto initialization feature can be disabled by component property "Auto initialization". */
  (void)FTM_Init(NULL);
  /* ### Serial_LDD "UART_A" component auto initialization. Auto initialization feature can be disabled by component property "Auto initialization". */
  (void)UART_A_Init(NULL);
  /* ### Serial_LDD "UART_B" component auto initialization. Auto initialization feature can be disabled by component property "Auto initialization". */
  (void)UART_B_Init(NULL);
  /* ### I2C_LDD "I2C" component auto initialization. Auto initialization feature can be disabled by component property "Auto initialization". */
  (void)I2C_Init(NULL);
  /* ### TimerInt_LDD "TimerIntLdd1" component auto initialization. Auto initialization feature can be disabled by component property "Auto initialization". */
  (void)TimerIntLdd1_Init(NULL);
  /* ### TimerInt "TI1" init code ... */
  /* ### PWM_LDD "PwmLdd1" component auto initialization. Auto initialization feature can be disabled by component property "Auto initialization". */
  (void)PwmLdd1_Init(NULL);
  /* ### PWM_LDD "PwmLdd2" component auto initialization. Auto initialization feature can be disabled by component property "Auto initialization". */
  (void)PwmLdd2_Init(NULL);
  /* ### PWM_LDD "PwmLdd3" component auto initialization. Auto initialization feature can be disabled by component property "Auto initialization". */
  (void)PwmLdd3_Init(NULL);
  /* ### PWM_LDD "PwmLdd4" component auto initialization. Auto initialization feature can be disabled by component property "Auto initialization". */
  (void)PwmLdd4_Init(NULL);
  /* ### Asynchro serial "RC" init code ... */
  RC_Init();
}
#endif /* CPU_COMPONENTS_INIT */


#ifdef __cplusplus
}
#endif

/* END Cpu. */

/*!
** @}
*/
/*
** ###################################################################
**
**     This file was created by Processor Expert 10.5 [05.21]
**     for the Freescale Kinetis series of microcontrollers.
**
** ###################################################################
*/

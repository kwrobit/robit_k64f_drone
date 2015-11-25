/* ###################################################################
**     Filename    : Events.c
**     Project     : robit_drone_rc
**     Processor   : MK64FN1M0VLL12
**     Component   : Events
**     Version     : Driver 01.00
**     Compiler    : GNU C Compiler
**     Date/Time   : 2015-11-24, 20:37, # CodeGen: 0
**     Abstract    :
**         This is user's event module.
**         Put your event handler code here.
**     Contents    :
**         Cpu_OnNMI - void Cpu_OnNMI(void);
**
** ###################################################################*/
/*!
** @file Events.c
** @version 01.00
** @brief
**         This is user's event module.
**         Put your event handler code here.
*/         
/*!
**  @addtogroup Events_module Events module documentation
**  @{
*/         
/* MODULE Events */

#include "Cpu.h"
#include "Events.h"
#include "Init_Config.h"
#include "PDD_Includes.h"

#ifdef __cplusplus
extern "C" {
#endif 


/* User includes (#include below this line is not maintained by Processor Expert) */
#include "dj6.h"


extern word g_nRCTimeOutCount; ///< 타임아웃 카운트 (RC용)
extern word g_n1msTimeCount; ///< 1ms System Time Count

extern byte g_pbRCTemp[30]; ///< RC Data 검출 시 사용되는 임시 변수
extern DJ6RCData g_DJ6RCData;



/*
** ===================================================================
**     Event       :  Cpu_OnNMI (module Events)
**
**     Component   :  Cpu [MK64FN1M0LL12]
*/
/*!
**     @brief
**         This event is called when the Non maskable interrupt had
**         occurred. This event is automatically enabled when the [NMI
**         interrupt] property is set to 'Enabled'.
*/
/* ===================================================================*/
void Cpu_OnNMI(void)
{
  /* Write your code here ... */
}

/*
** ===================================================================
**     Event       :  RC_OnError (module Events)
**
**     Component   :  RC [AsynchroSerial]
**     Description :
**         This event is called when a channel error (not the error
**         returned by a given method) occurs. The errors can be read
**         using <GetError> method.
**         The event is available only when the <Interrupt
**         service/event> property is enabled.
**     Parameters  : None
**     Returns     : Nothing
** ===================================================================
*/
void RC_OnError(void)
{
  /* Write your code here ... */
}

/*
** ===================================================================
**     Event       :  RC_OnRxChar (module Events)
**
**     Component   :  RC [AsynchroSerial]
**     Description :
**         This event is called after a correct character is received.
**         The event is available only when the <Interrupt
**         service/event> property is enabled and either the <Receiver>
**         property is enabled or the <SCI output mode> property (if
**         supported) is set to Single-wire mode.
**     Parameters  : None
**     Returns     : Nothing
** ===================================================================
*/
void RC_OnRxChar(void)
{
  /* Write your code here ... */

	if(RC_GetCharsInRxBuf() > 24)
	{
		RC_RecvChar(&g_pbRCTemp[0]);
		if(g_pbRCTemp[0] == 0x0F)
		{
			word _nRecvSize;
			RC_RecvBlock(g_pbRCTemp+1, 24, &_nRecvSize);
			if(_nRecvSize == 24)
			{
				g_nRCTimeOutCount = 0;
				DJ6_parse_data(g_pbRCTemp, &g_DJ6RCData);
				RC_ClearRxBuf();
			}
		}
	}
}

/*
** ===================================================================
**     Event       :  RC_OnTxChar (module Events)
**
**     Component   :  RC [AsynchroSerial]
**     Description :
**         This event is called after a character is transmitted.
**     Parameters  : None
**     Returns     : Nothing
** ===================================================================
*/
void RC_OnTxChar(void)
{
  /* Write your code here ... */
}

/*
** ===================================================================
**     Event       :  RC_OnFullRxBuf (module Events)
**
**     Component   :  RC [AsynchroSerial]
**     Description :
**         This event is called when the input buffer is full;
**         i.e. after reception of the last character 
**         that was successfully placed into input buffer.
**     Parameters  : None
**     Returns     : Nothing
** ===================================================================
*/
void RC_OnFullRxBuf(void)
{
  /* Write your code here ... */
}




/*
** ===================================================================
**     Event       :  TimeOutInt_OnInterrupt (module Events)
**
**     Component   :  TimeOutInt [TimerInt]
**     Description :
**         When a timer interrupt occurs this event is called (only
**         when the component is enabled - <Enable> and the events are
**         enabled - <EnableEvent>). This event is enabled only if a
**         <interrupt service/event> is enabled.
**     Parameters  : None
**     Returns     : Nothing
** ===================================================================
*/
void TimeOutInt_OnInterrupt(void)
{
  /* Write your code here ... */
	g_n1msTimeCount++;
}

/* END Events */

#ifdef __cplusplus
}  /* extern "C" */
#endif 

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

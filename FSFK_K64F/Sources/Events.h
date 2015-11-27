// Copyright (c) 2014, 2015, Freescale Semiconductor, Inc.
// All rights reserved.
// 
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of Freescale Semiconductor, Inc. nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL FREESCALE SEMICONDUCTOR, INC. BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
#ifndef EVENTS_H
#define EVENTS_H

#include "PE_Types.h"
#include "PE_Error.h"
#include "PE_Const.h"
#include "IO_Map.h"
#include "MQX1.h"
#include "SystemTimer1.h"
#include "LED_RED.h"
#include "LED_GREEN.h"
#include "FTM.h"
#include "UART_A.h"
#include "UART_B.h"
#include "I2C.h"
#include "TI1.h"
#include "TimerIntLdd1.h"
#include "TU1.h"
#include "ROTOR1.h"
#include "PwmLdd1.h"
#include "TU2.h"
#include "ROTOR2.h"
#include "PwmLdd2.h"
#include "ROTOR3.h"
#include "PwmLdd3.h"
#include "ROTOR4.h"
#include "PwmLdd4.h"
#include "RC.h"
#include "ASerialLdd1.h"

// prototypes for functions defined in Events.c
void Cpu_OnNMIINT(void);
void FTM_OnCounterRestart(LDD_TUserData *UserDataPtr);
void I2C_OnMasterBlockSent(LDD_TUserData *UserDataPtr);
void I2C_OnMasterBlockReceived(LDD_TUserData *UserDataPtr);
void I2C_OnError(LDD_TUserData *UserDataPtr);
void DecodeCommandBytes(char iCommandBuffer[], uint8 sUART_InputBuffer[], uint16 nbytes);
void UART_A_OnBlockSent(LDD_TUserData *UserDataPtr);
void UART_A_OnTxComplete(LDD_TUserData *UserDataPtr);
void UART_A_OnBlockReceived(LDD_TUserData *UserDataPtr);
void UART_B_OnBlockSent(LDD_TUserData *UserDataPtr);
void UART_B_OnTxComplete(LDD_TUserData *UserDataPtr);
void UART_B_OnBlockReceived(LDD_TUserData *UserDataPtr);

/*
** ===================================================================
**     Event       :  TI1_OnInterrupt (module Events)
**
**     Component   :  TI1 [TimerInt]
**     Description :
**         When a timer interrupt occurs this event is called (only
**         when the component is enabled - <Enable> and the events are
**         enabled - <EnableEvent>). This event is enabled only if a
**         <interrupt service/event> is enabled.
**     Parameters  : None
**     Returns     : Nothing
** ===================================================================
*/
void TI1_OnInterrupt(void);

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
void RC_OnError(void);

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
void RC_OnRxChar(void);

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
void RC_OnTxChar(void);

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
void RC_OnFullRxBuf(void);

#endif // #ifndef EVENTS_H

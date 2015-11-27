/*
 * dj6.h
 *
 *  Created on: 2015. 11. 24.
 *      Author: ParkSuhan
 */

#ifndef SOURCES_DJ6_H_
#define SOURCES_DJ6_H_

#include "PE_Types.h"

enum DJ6Error {DISCONNECTED=0x0C};

enum DRONESTATE {INIT=0x00,
				 RC_CONNECT=0x01,
				 RUN_OK=0x02,
				 RC_DISCONNECT=0x0C,
				 CALLBACK=0xF0};

typedef struct _DJ6RCData
{
	int RX;
	int RY;
	int LX;
	int LY;
	int BK;

	word SW1;
	word SW2;

	byte ERROR;
}DJ6RCData;


void DJ6_parse_data(byte *pbArr, DJ6RCData *pDJ6Data);


#endif /* SOURCES_DJ6_H_ */

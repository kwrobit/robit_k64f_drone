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

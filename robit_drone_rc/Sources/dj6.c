/*
 * dj6.c
 *
 *  Created on: 2015. 11. 24.
 *      Author: ParkSuhan
 */

#include "dj6.h"

// 32bit processor 기준
void DJ6_parse_data(byte *pbArr, DJ6RCData *pDJ6Data)
{
	int _nTempData;
	_nTempData = ((pbArr[2] & 0b00000011) << 8) + pbArr[1];
	if(!(pbArr[2] & 0b00000100))
	{
		_nTempData += 0xFFFFFC00; // 음수 설정
	}
	if(_nTempData == -768) return; // 튐 방지
	pDJ6Data->RX = _nTempData;

	_nTempData = ((pbArr[3] & 0b00011111) << 5)+ ((pbArr[2] & 0b11111000) >> 3);
	if(!(pbArr[3] & 0b00100000))
	{
		_nTempData += 0xFFFFFC00; // 음수 설정
	}
	if(_nTempData == -768) return; // 튐 방지
	pDJ6Data->RY = _nTempData;

	_nTempData = (pbArr[4] << 2) + ((pbArr[3] & 0b11000000) >> 6);
	if(!(pbArr[5] & 0b00000001))
	{
		_nTempData += 0xFFFFFC00; // 음수 설정
	}
	if(_nTempData == -768) return; // 튐 방지
	pDJ6Data->LY = _nTempData;

	_nTempData = ((pbArr[6] & 0b00000111) << 7) + ((pbArr[5] & 0b11111110) >> 1);
	if(!(pbArr[6] & 0b00001000))
	{
		_nTempData += 0xFFFFFC00; // 음수 설정
	}
	if(_nTempData == -768) return; // 튐 방지
	pDJ6Data->LX = _nTempData;

	_nTempData = ((pbArr[7] & 0b00111111) << 4) + ((pbArr[6] & 0b11110000) >> 4);
	if(!(pbArr[7] & 0b01000000))
	{
		_nTempData += 0xFFFFFC00; // 음수 설정
	}
	if(_nTempData == -768) return; // 튐 방지
	pDJ6Data->BK = _nTempData;
	pDJ6Data->SW1 = ((pbArr[9] & 0b00000011) << 8) + (pbArr[8] << 1) + ((pbArr[7] & 0b10000000) >> 7);
	pDJ6Data->SW2 = ((pbArr[10] & 0b00011111) << 6) + ((pbArr[9] & 0b11111100) >> 2);

}

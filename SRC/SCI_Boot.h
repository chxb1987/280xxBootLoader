/**
* @file SCI_Boot.h
* @brief C2000 Resident bootloader SCI boot driver
*
* @author Eli Schneider
*
* @version 0.0.1
* @date 04.04.2011
*/
#ifndef _SCI_BOOT_H
#define _SCI_BOOT_H

#include "DSP280x_Device.h"

inline void SCIA_Init(void)
{
	// Enable the SCI-A clocks
	EALLOW;
	SysCtrlRegs.PCLKCR0.bit.SCIAENCLK=1;
	SysCtrlRegs.LOSPCP.all = 0x0002;
	SciaRegs.SCIFFTX.all=0x8000;
	// 1 stop bit, No parity, 8-bit character
	// No loopback
	SciaRegs.SCICCR.all = 0x0007;
	// Enable TX, RX, Use internal SCICLK
	SciaRegs.SCICTL1.all = 0x0003; 
	// Disable RxErr, Sleep, TX Wake, 
	// Diable Rx Interrupt, Tx Interrupt
	SciaRegs.SCICTL2.all = 0x0000;
	// Relinquish SCI-A from reset
	SciaRegs.SCICTL1.all = 0x0023;
	// Enable pull-ups on SCI-A pins
	// GpioCtrlRegs.GPAPUD.bit.GPIO28 = 0;
	// GpioCtrlRegs.GPAPUD.bit.GPIO29 = 0;
	GpioCtrlRegs.GPAPUD.all &= 0xCFFFFFFF;
	// Enable the SCI-A pins   
	// GpioCtrlRegs.GPAMUX2.bit.GPIO28 = 1;
	// GpioCtrlRegs.GPAMUX2.bit.GPIO29 = 1;
	GpioCtrlRegs.GPAMUX2.all |= 0x05000000;
	// Input qual for SCI-A RX is asynch
	GpioCtrlRegs.GPAQSEL2.bit.GPIO28 = 3;
	EDIS;
}

inline void SCIA_BaudSet(Uint32 baud)
{
	Uint16 brr;

	if (baud)
		brr=(3125000UL/(baud))+((((3125000UL%(baud))*2)<baud)?0:1)-1;
	else
		brr=0;
		
    SciaRegs.SCIHBAUD = brr>>8;
    SciaRegs.SCILBAUD = brr&0xff;
}
	
inline void SCIA_AutobaudLockStart(void)
{
    // Must prime baud register with >= 1
    SciaRegs.SCILBAUD = 1;
    // Prepare for autobaud detection
    // Set the CDC bit to enable autobaud detection
    // and clear the ABD bit      
    SciaRegs.SCIFFCT.bit.CDC = 1;
    SciaRegs.SCIFFCT.bit.ABDCLR = 1;
}
	
inline int SCIA_AutobaudLockPoll(void)
{
    // Wait until we correctly read an 
    // 'A' or 'a' and lock   
     
    if(SciaRegs.SCIFFCT.bit.ABD != 1)
		return 0;
    // After autobaud lock, clear the CDC bit
    SciaRegs.SCIFFCT.bit.CDC = 0;
	return 1;
}
	
inline int SCIA_AutobaudLockRxPoll(void)
{
    Uint16 byteData;

	
	if (SciaRegs.SCIRXST.bit.RXRDY != 1)
		return 0;
	byteData = SciaRegs.SCIRXBUF.bit.RXDT;
	SciaRegs.SCITXBUF = byteData;

	return 1;   
}
	
inline int SCIA_RxRdy(void)
{
	return SciaRegs.SCIRXST.bit.RXRDY;
}

inline int SCIA_RxEchoChar(void)
{
    Uint16 byteData;
	
	byteData = SciaRegs.SCIRXBUF.bit.RXDT;
	SciaRegs.SCITXBUF = byteData;
	return byteData;
}

inline int SCIA_RxChar(void)
{
    Uint16 byteData;
	
	byteData = SciaRegs.SCIRXBUF.bit.RXDT;
	return byteData;
}

inline void SCIA_TxChar(Uint16 byteData)
{
	while (!SciaRegs.SCICTL2.bit.TXRDY);
	SciaRegs.SCITXBUF = byteData;
}

Uint16 SCIA_GetWordData();

#endif // _SCI_BOOT_H

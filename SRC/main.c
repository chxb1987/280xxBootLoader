//###########################################################################
//
//!  \addtogroup f2803x_example_list
//!  <h1>F28035 Flash Kernel (f2803x_flash_kernel)</h1>
//!
//!   This example is for use with the SerialLoader2000 utility.  This
//!   application is intended to be loaded into the device's RAM via the
//!   SCI boot mode.  After successfully loaded this program implements a
//!   modified version of the SCI boot protocol that allows a user application
//!   to be programmed into flash.
//
//###########################################################################
// $TI Release: F2803x C/C++ Header Files and Peripheral Examples V130 $
// $Release Date: May  8, 2015 $
// $Copyright: Copyright (C) 2009-2015 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//###########################################################################

#include "DSP28x_Project.h"
#include "descriptor.h"
#include "boot.h"

extern Uint16 sectorMask;

// Prototype statements for functions found within this file.
extern Uint32 SCI_Boot();
void (*ApplicationPtr) (void);
__interrupt void cpu_timer0_isr(void);

void memCopy(Uint16 *srcStartAddr,Uint16 *srcEndAddr,Uint16 *dstAddr)
{

  while(srcStartAddr <= srcEndAddr)
    {
      *dstAddr++ = *srcStartAddr++;
    }

  return;
} // end of memCopy() function

Uint32 main(void)
{
	Uint32 EntryPoint;

    DINT;	// Disable Global interrupt INTM
    IER=0;
    IFR=0;
    PieCtrlRegs.PIEACK.all = 0;
	DisableDog();
	IntOsc1Sel();
	InitPll(DSP28_PLLCR,DSP28_DIVSEL);

	/* Copy data to RAM */
	memCopy((Uint16 *)&RamfuncsLoadStart,(Uint16 *)&RamfuncsLoadEnd,(Uint16 *)&RamfuncsRunStart);

	InitPieCtrl();
	InitPieVectTable();

	/*timeout*/
	InitCpuTimers();
	ConfigCpuTimer(&CpuTimer0, 60, 1000);//1ms interrupt
	timoutReset();

	EALLOW;  // This is needed to write to EALLOW protected registers
	PieVectTable.TINT0 = &cpu_timer0_isr;
	EDIS;    // This is needed to disable write to EALLOW protected registers

	// Enable CPU INT1 which is connected to CPU-Timer 0:
	IER |= M_INT1;

	// Enable TINT0 in the PIE: Group 1 interrupt 7
	PieCtrlRegs.PIEIER1.bit.INTx7 = 1;

	// Enable global Interrupts and higher priority real-time debug events:
	EINT;   // Enable Global interrupt INTM
	ERTM;   // Enable Global realtime interrupt DBGM

	CpuTimer0Regs.TCR.all = 0x4001; // Use write-only instruction to set TSS bit = 0


	EntryPoint=SCI_Boot();

	return EntryPoint;
}//Returning from main calls _ExitBoot in Exit_Boot.asm.






#ifdef RUN_FROM_RAM
#pragma CODE_SECTION(cpu_timer0_isr, "ramfuncs");
#endif
__interrupt void cpu_timer0_isr(void)
{
   CpuTimer0.InterruptCount++;
   if (CpuTimer0.InterruptCount>1000)
   {
	   callBootLoader();
   }
   PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;

}


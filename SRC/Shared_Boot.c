//###########################################################################
//
// FILE:    Shared_Boot.c
//
// TITLE:   Boot loader shared functions
//
// Functions:
//
//     void   CopyData(void)
//     Uint32 GetLongData(void)
//     void ReadReservedFn(void)
//
//###########################################################################
// $TI Release: F2803x C/C++ Header Files and Peripheral Examples V130 $
// $Release Date: May  8, 2015 $
// $Copyright: Copyright (C) 2009-2015 Texas Instruments Incorporated -
//             http://www.ti.com/ ALL RIGHTS RESERVED $
//###########################################################################

#include "Boot.h"

#include "descriptor.h"

#ifndef NULL
#define NULL 0
#endif


#define ENABLE_SECTOR_SELECT 0x5C00

//#pragma    DATA_SECTION(EmuKey,"EmuKeyVar");
//#pragma    DATA_SECTION(EmuBMode,"EmuBModeVar");
//Uint16     EmuKey;
//Uint16     EmuBMode;
Uint16     ReservedFn[8];   //([0] is the second word in HEX file)
// 	0 - sectors to erase
//	1 - Enable KEY Sector A erase
//	3 - Sector erase report

struct HEADER {
  Uint16 BlockSize;
  Uint32 DestAddr;
  Uint32 ProgBuffAddr;
} BlockHeader;

// GetWordData is a pointer to the function that interfaces to the peripheral.
// Each loader assigns this pointer to it's particular GetWordData function.
uint16fptr GetOnlyWordData;

// Function prototypes
Uint32 GetLongData();
//void   CopyData(void);
void ReadReservedFn(void);
//After flash_program, send checksum to PC
void SendCheckSum();
Uint16 CsmUnlock();


//Programming Buffer
Uint16 progBuf[PROG_BUFFER_LENGTH];
//Flash Status Structure
FLASH_ST FlashStatus;

extern Uint32 Flash_CPUScaleFactor;
extern void (*Flash_CallbackPtr) (void);

unsigned int checksum;
Uint16 sectorMask=(/*SECTORA | SECTORB|*/ SECTORC | SECTORD |SECTORE | SECTORF | SECTORG | SECTORH);




#ifdef RUN_FROM_RAM
#pragma CODE_SECTION(sectorErase, "ramfuncs");
#endif
void sectorErase(Uint16 sector)
{
	Uint16 status;
	if (!sector)
		return;

	DINT;	// Disable Global interrupt INTM
	status = Flash_Erase(sector, &FlashStatus);
	EINT;	// Disable Global interrupt INTM
	timoutReset();

	if(status != STATUS_SUCCESS)
	{
		 if (ReservedFn[02]&0x01) //Report sector erase status
		 {
		        SciaRegs.SCITXBUF = sector & 0xFF;
		    	SciaRegs.SCITXBUF = 0x55; //failure
		 }

		 while(1); //reset boot loader
	}

    if (ReservedFn[02]&0x01) //Report sector erase status
    {
        SciaRegs.SCITXBUF = sector & 0xFF;
    	SciaRegs.SCITXBUF = 0x00; // success
    }
}

//#################################################
// void CopyData(void)
//-----------------------------------------------------
// This routine copies multiple blocks of data from the host
// to the specified RAM locations.  There is no error
// checking on any of the destination addresses.
// That is it is assumed all addresses and block size
// values are correct.
//
// Multiple blocks of data are copied until a block
// size of 00 00 is encountered.
//
//-----------------------------------------------------
#ifdef RUN_FROM_RAM
#pragma CODE_SECTION(CopyData, "ramfuncs");
#endif
void CopyData()
{
   Uint16 wordData;
   Uint16 status;
   Uint16 i,j;
   volatile int errCode=0;
   //Make sure code security is disabled
   CsmUnlock();

   EALLOW;
   Flash_CPUScaleFactor = SCALE_FACTOR;
   Flash_CallbackPtr = NULL;
   EDIS;

   /*************Erase *********************/
   if (ReservedFn[0])
	   sectorMask=ReservedFn[0]&0x00FF;

   if (ReservedFn[01]==0x005A)
	   sectorErase(SECTORA&sectorMask);
   sectorErase(SECTORB&sectorMask);
   sectorErase(SECTORC&sectorMask);
   sectorErase(SECTORD&sectorMask);
   sectorErase(SECTORE&sectorMask);
   sectorErase(SECTORF&sectorMask);
   sectorErase(SECTORG&sectorMask);
   sectorErase(SECTORH&sectorMask);


   // After Flash Erase, send the checksum to PC program.
   SendCheckSum();
   // Get the size in words of the first block
   BlockHeader.BlockSize = (*GetOnlyWordData)();

   // While the block size is > 0 copy the data
   // to the DestAddr.  There is no error checking
   // as it is assumed the DestAddr is a valid
   // memory location


   while(BlockHeader.BlockSize != (Uint16)0x0000)
   {
	  if(BlockHeader.BlockSize > PROG_BUFFER_LENGTH)
      {
		  //Block is to big to fit into our buffer so we must program it in chunks
	      BlockHeader.DestAddr = GetLongData();
	      //Program as many full buffers as possible
	      for(j = 0; j < (BlockHeader.BlockSize / PROG_BUFFER_LENGTH); j++)
          {
		      BlockHeader.ProgBuffAddr = (Uint32)progBuf;
		      for(i = 1; i <= PROG_BUFFER_LENGTH; i++)
		      {
		    	  timoutReset();
		          wordData = (*GetOnlyWordData)();
		          *(Uint16 *)BlockHeader.ProgBuffAddr++ = wordData;
		      }

			  DINT;	// Disable Global interrupt INTM
			  status = Flash_Program((Uint16 *) BlockHeader.DestAddr, (Uint16 *)progBuf, PROG_BUFFER_LENGTH, &FlashStatus);
			  EINT;

		      if(status != STATUS_SUCCESS)
		      {
		    	  errCode=1;
		    	  __asm ("      ESTOP0");
		          return ;
		      }
		      BlockHeader.DestAddr += PROG_BUFFER_LENGTH;
		      // After Flash program, send the checksum to PC program.
		      SendCheckSum();
	      }
	      //Program the leftovers
	      BlockHeader.ProgBuffAddr = (Uint32)progBuf;
	      for(i = 1; i <= (BlockHeader.BlockSize % PROG_BUFFER_LENGTH); i++)
	      {
	    	  timoutReset();
	          wordData = (*GetOnlyWordData)();
	          *(Uint16 *)BlockHeader.ProgBuffAddr++ = wordData;
	      }

		  DINT;	// Disable Global interrupt INTM
		  status = Flash_Program((Uint16 *) BlockHeader.DestAddr, (Uint16 *)progBuf, (BlockHeader.BlockSize % PROG_BUFFER_LENGTH), &FlashStatus);
		  EINT;

	      if(status != STATUS_SUCCESS)
	      {
	    	  errCode=2;
	    	  __asm ("      ESTOP0");
	          return ;
	      }
	      // After Flash program, send the checksum to PC program.
	      SendCheckSum();
	  }
      else
      {
		  //Block will fit into our buffer so we'll program it all at once
	      BlockHeader.DestAddr = GetLongData();
	      BlockHeader.ProgBuffAddr = (Uint32)progBuf;
	      for(i = 1; i <= BlockHeader.BlockSize; i++)
	      {
	    	  timoutReset();
	          wordData = (*GetOnlyWordData)();
	          *(Uint16 *)BlockHeader.ProgBuffAddr++ = wordData;
	      }

		  DINT;	// Disable Global interrupt INTM
		  status = Flash_Program((Uint16 *) BlockHeader.DestAddr, (Uint16 *)progBuf, BlockHeader.BlockSize, &FlashStatus);
		  EINT;

	      if(status != STATUS_SUCCESS)
	      {
	    	  errCode=3;
	    	  __asm ("      ESTOP0");
	          return ;
	      }
	      // After Flash program, send the checksum to PC program.
	      SendCheckSum();
	  }

      // Get the size of the next block
      BlockHeader.BlockSize = (*GetOnlyWordData)();
   }

	if (!errCode)
		callMain();

   return;
}
//#################################################
// Uint32 GetLongData(void)
//-----------------------------------------------------
// This routine fetches a 32-bit value from the peripheral
// input stream.
//-----------------------------------------------------
#ifdef RUN_FROM_RAM
#pragma CODE_SECTION(GetLongData, "ramfuncs");
#endif
Uint32 GetLongData()
{
    Uint32 longData;

    // Fetch the upper 1/2 of the 32-bit value
    longData = ( (Uint32)(*GetOnlyWordData)() << 16);

    // Fetch the lower 1/2 of the 32-bit value
    longData |= (Uint32)(*GetOnlyWordData)();

    return longData;
}

//#################################################
// void Read_ReservedFn(void)
//-------------------------------------------------
// This function reads 8 reserved words in the header.
// None of these reserved words are used by the
// this boot loader at this time, they may be used in
// future devices for enhancements.  Loaders that use
// these words use their own read function.
//-------------------------------------------------
#ifdef RUN_FROM_RAM
#pragma CODE_SECTION(ReadReservedFn, "ramfuncs");
#endif
void ReadReservedFn()
{
    Uint16 i;
    // Read and discard the 8 reserved words.
    for(i = 0; i < 8; i++)
    {
    	ReservedFn[i]=GetOnlyWordData();
    }
    return;
}

//#################################################
// void SendCheckSum(void)
//-----------------------------------------------------
// This function sends checksum to PC program
// After flash memory erases or writes something, this functions will be running
//-----------------------------------------------------
#ifdef RUN_FROM_RAM
#pragma CODE_SECTION(SendCheckSum, "ramfuncs");
#endif
void SendCheckSum()
{

 	while(!SciaRegs.SCICTL2.bit.TXRDY)
	{
	}
	SciaRegs.SCITXBUF = checksum & 0xFF;

	while(!SciaRegs.SCICTL2.bit.TXRDY)
	{
	}
	SciaRegs.SCITXBUF = (checksum >> 8) & 0xFF;
 	checksum = 0;
   	return;
}

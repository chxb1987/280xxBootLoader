;//###########################################################################
;//
;// FILE:  F2806x_DBGIER.asm
;//
;// TITLE: Set the DBGIER register
;//
;// DESCRIPTION:
;//  
;//  Function to set the DBGIER register (for realtime emulation).
;//  Function Prototype: void SetDBGIER(Uint16)
;//  Useage: SetDBGIER(value);
;//  Input Parameters: Uint16 value = value to put in DBGIER register. 
;//  Return Value: none          
;//
;//###########################################################################
;// $TI Release: F2806x C/C++ Header Files and Peripheral Examples V151 $ 
;// $Release Date: February  2, 2016 $ 
;// $Copyright: Copyright (C) 2011-2016 Texas Instruments Incorporated -
;//             http://www.ti.com/ ALL RIGHTS RESERVED $
;//###########################################################################	
		.global _SetDBGIER
		.text
		
_SetDBGIER:
		MOV 	*SP++,AL
		POP 	DBGIER
		LRETR
		

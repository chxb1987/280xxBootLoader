/******************************************************************************/
/* LNK.CMD - COMMAND FILE FOR LINKING C PROGRAMS                              */
/*                                                                            */
/*      Usage:  cl2000 -z <obj files...> -o <out file> -m <map file> lnk.cmd  */
/*              cl2000 <src files...> -z -o <out file> -m <map file> lnk.cmd  */
/*                                                                            */
/*      Description: This file is a sample command file that can be used      */
/*                   for linking programs built with the C Compiler.          */
/*                   Use it as a guideline; you  may want to change the       */
/*                   allocation scheme according to the size of your program  */
/*                   and the memory layout of your target system.             */
/*                                                                            */
/******************************************************************************/

-c                    /* Use C linking conventions: auto-init vars at runtime */

-stack    0x8000      /* Primary stack size   */
-heap     0x8000      /* Heap area size       */
--args    0x1000      /* Far Heap area size   */

/* large model only */
/* current simulator has various MMRs from 0xf00 - 0xfff */

MEMORY
{
PAGE 0 : RESET(R):    origin = 0x000000, length = 0x00002
         VECTORS(R) : origin = 0x000002, length = 0x003FE
         RAM1 (RW)  : origin = 0x000402, length = 0x003FE
         RAM2 (RW)  : origin = 0x001000, length = 0x16000
         RAM3 (RW)  : origin = 0x300000, length = 0x50000
}

SECTIONS
{
        .reset      : >  RESET,        PAGE = 0
         vectors    : >  VECTORS,      PAGE = 0

        .text       : >> RAM3,         PAGE = 0
        .data       : >> RAM2 | RAM3,  PAGE = 0
        .cinit      : >  RAM2 | RAM3,  PAGE = 0
        .pinit      : >  RAM2 | RAM3,  PAGE = 0
        .init_array : >  RAM2 | RAM3,  PAGE = 0
        .bss        : >  RAM2,         PAGE = 0
        .cio        : >  RAM2,         PAGE = 0
        .args       : >  RAM2,         PAGE = 0
	.ebss       : >> RAM2 | RAM3,  PAGE = 0
	.econst     : >> RAM2 | RAM3,  PAGE = 0
	.const      : >  RAM2,         PAGE = 0
        .stack      : >  RAM2,         PAGE = 0
        .esysmem    : >  RAM2 | RAM3,  PAGE = 0
}

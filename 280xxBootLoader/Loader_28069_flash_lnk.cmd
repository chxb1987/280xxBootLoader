/**
* @file F28035_Flash_Lnk.cmd
* @brief Brief description
*        Brief description continued
*
* Detailed description starts here
*
* @author shlomi
* @version Version number
* @date 4 באפר׳ 2017
* @copyright (C)2017 Redler Technologies Ltd.
*
*
* Linker Command File For 28035  that run out of Flash A for loader.
*/

/*

Addresses of Flash Sectors in F28035:

Flash size: 32Kx16, 8 sectors, memory range [0x03F000,0x03F8000].

Flash map:

Sector A (8K x 16): 0x3F 6000 - 0x3F 7FFF
	0x3F 6000 – 0x3F 7F7F for user program
	0x3F 7F80 – 0x3F 7FF5 Program to 0x0000 when using the Code Security Module
	0x3F 7FF6 – 0x3F 7FF7 Boot-to-Flash Entry Point (program branch instruction here)
	0x3F 7FF8 – 0x3F 7FFF Security Password (128-Bit) (Do not program to all zeros)

Sector B (8K x 16): 0x3F 4000 – 0x3F 5FFF

Sector C (8K x 16): 0x3F 2000 – 0x3F 3FFF

Sector D (8K x 16): 0x3F 0000 – 0x3F 1FFF

Sector E (8K x 16): 0x3E E000 – 0x3E FFFF

Sector F (8K x 16): 0x3E C000 – 0x3E DFFF

Sector G (8K x 16): 0x3E A000 – 0x3E BFFF

Sector H (8K x 16): 0x3E 8000 – 0x3E 9FFF
*/

MEMORY
{
PAGE 0 :   /* Program Memory */

 /* Memory (RAM/FLASH/OTP) blocks can be moved to PAGE1 for data allocation */

  /***RAM***/
   RAML0       : origin = 0x008000, length = 0x000800     /* on-chip RAM block L0 - CPU Program*/
   RAML1       : origin = 0x008800, length = 0x000400     /* on-chip RAM block L2 -CLA data ram*/
   RAML2       : origin = 0x008C00, length = 0x000400     /* on-chip RAM block L2 -CLA data ram*/
   RAML3       : origin = 0x009000, length = 0x001000	  /* data RAM (L3) - CLA program*/

    /***OTP***/
   OTP         : origin = 0x3D7800, length = 0x000400     /* on-chip OTP */

  /***FLASH C D E F G H***/
   APP_DESC      : origin = 0x3D8000, length = 0x000008   /*main program descriptor part of flash H*/
   FLASH_HGF	 : origin = 0x3D8008, length = 0x00BFF8   /* 0x3E4000-0x3D8008, combined on-chip FLASH - (APPDESC)*/
   //FLASHH      : origin = 0x3D8000, length = 0x004000     /* on-chip FLASH */
   //FLASHG      : origin = 0x3DC000, length = 0x004000     /* on-chip FLASH */
   //FLASHF      : origin = 0x3E0000, length = 0x004000     /* on-chip FLASH */


	/****competablity to 28035 not in use*****/
   //FLASHE      : origin = 0x3E4000, length = 0x004000     /* on-chip FLASH */
   //FLASHD      : origin = 0x3E8000, length = 0x004000     /* on-chip FLASH */
   //FLASHC      : origin = 0x3EC000, length = 0x004000     /* on-chip FLASH */
	/****End of competablity to 28035 not in use*****/

   /***FLASH B***/
   FLASHB      : origin = 0x3F0000, length = 0x004000     /* on-chip FLASH - parameters */

   /***FLASH A***/
   LOADER_DESC  : origin = 0x3F4000, length = 0x000008  /*Loader descriptor*/
   LOADER       : origin = 0x3F4008, length = 0x003F78  /*0x3F4008-0x3F7F80, loader main program*/
   //FLASHA      : origin = 0x3F4000, length = 0x003F80     /* on-chip FLASH */

   CSM_RSVD    : origin = 0x3F7F80, length = 0x000076     /* Part of FLASHA.  Program with all 0x0000 when CSM is in use. */
   BEGIN       : origin = 0x3F7FF6, length = 0x000002     /* Part of FLASHA.  Used for "boot to Flash" bootloader mode. */
   CSM_PWL_P0  : origin = 0x3F7FF8, length = 0x000008     /* Part of FLASHA.  CSM password locations in FLASHA */

	/***ROM***/
   FPUTABLES   : origin = 0x3FD590, length = 0x0006A0	 /* FPU Tables in Boot ROM */
   IQTABLES    : origin = 0x3FDC30, length = 0x000B50    /* IQ Math Tables in Boot ROM */
   IQTABLES2   : origin = 0x3FE780, length = 0x00008C    /* IQ Math Tables in Boot ROM */
   IQTABLES3   : origin = 0x3FE80C, length = 0x0000AA	 /* IQ Math Tables in Boot ROM */

   ROM         : origin = 0x3FF3B0, length = 0x000C10     /* Boot ROM */
   RESET       : origin = 0x3FFFC0, length = 0x000002     /* part of boot ROM  */
   VECTORS     : origin = 0x3FFFC2, length = 0x00003E     /* part of boot ROM  */

PAGE 1 :   /* Data Memory */
           /* Memory (RAM/FLASH/OTP) blocks can be moved to PAGE0 for program allocation */
           /* Registers remain on PAGE1                                                  */

   BOOT_RSVD   : origin = 0x000000, length = 0x000050     /* Part of M0, BOOT rom will use this for stack */

   RAMM0M1    : origin = 0x000050, length = 0x0007B0      /* on-chip RAM block M0 and M1 */
   //RAMM0       : origin = 0x000050, length = 0x0003B0     /* on-chip RAM block M0 */
   //RAMM1       : origin = 0x000400, length = 0x000400     /* on-chip RAM block M1 */

	CLA_CPU_MSGRAM  : origin = 0x001480, length = 0x000080 /* CLA-R/W, CPU-R message RAM */
	CPU_CLA_MSGRAM  : origin = 0x001500, length = 0x000080 /* CPU-R/W, CLA-R message RAM */

	/****competablity to 28035 not in use*****/
   RAML4       : origin = 0x00A000, length = 0x002000     /* on-chip RAM block L4 */
   RAML5       : origin = 0x00C000, length = 0x002000     /* on-chip RAM block L5 */
   RAML6       : origin = 0x00E000, length = 0x002000     /* on-chip RAM block L6 */
   RAML7       : origin = 0x010000, length = 0x002000     /* on-chip RAM block L7 */
   RAML8       : origin = 0x012000, length = 0x001800     /* on-chip RAM block L8. From 0x13800 to 0x14000 is reserved for InstaSPIN */
   USB_RAM     : origin = 0x040000, length = 0x000800     /* USB RAM		  */
   /****End of competablity to 28035 not in use*****/
}




SECTIONS
{
	/*****************FLASH***************/
   codestart        : > BEGIN,     PAGE = 0 /* codestart func in codestart.asm */
   .InitBoot        : > LOADER,    PAGE = 0 /* initBoot func foound in codestart.asm */
   .appDesc		    : > APP_DESC,  PAGE = 0 /* stores main program  entry point (_c_int00) and ckecksum */
   .loaderDesc		: > LOADER_DESC       PAGE = 0 /* stores Loader entry point (_c_int00) and ckecksum */

   .text            : > LOADER,    PAGE = 0
   .cinit           : > LOADER,    PAGE = 0
   .pinit           : > LOADER,    PAGE = 0

   ramfuncs         : LOAD = LOADER,
					 RUN = RAML3,
				 	 LOAD_START(_RamfuncsLoadStart),
					 LOAD_END(_RamfuncsLoadEnd),
					 LOAD_SIZE(_RamfuncsLoadSize),
					 RUN_START(_RamfuncsRunStart),
					 PAGE = 0

   .econst          : > LOADER,    PAGE = 0
   .switch          : > LOADER,    PAGE = 0
   IQmath           : > LOADER,    PAGE = 0


	/*********RAM**************************/
   .stack           : > RAMM0M1,     PAGE = 1
   .ebss            : > RAMM0M1 | RAML4 | RAML5,     PAGE = 1
   .esysmem         : > RAMM0M1 | RAML4 | RAML5,     PAGE = 1
   //.econst          : > RAMM1 | RAML2 | RAML3,     PAGE = 1


   /*********ROM******************************/
   .reset           : > RESET,     PAGE = 0, TYPE = DSECT /* not used, */
   IQmathTables     : > IQTABLES,  PAGE = 0, TYPE = NOLOAD





  /* Uncomment the section below if calling the IQNexp() or IQexp()
      functions from the IQMath.lib library in order to utilize the
      relevant IQ Math table in Boot ROM (This saves space and Boot ROM
      is 1 wait-state). If this section is not uncommented, IQmathTables2
      will be loaded into other memory (SARAM, Flash, etc.) and will take
      up space, but 0 wait-state is possible.
   */
   /*
   IQmathTables2    : > IQTABLES2, PAGE = 0, TYPE = NOLOAD
   {

              IQmath.lib<IQNexpTable.obj> (IQmathTablesRam)

   }
   */
   /* Uncomment the section below if calling the IQNasin() or IQasin()
      functions from the IQMath.lib library in order to utilize the
      relevant IQ Math table in Boot ROM (This saves space and Boot ROM
      is 1 wait-state). If this section is not uncommented, IQmathTables2
      will be loaded into other memory (SARAM, Flash, etc.) and will take
      up space, but 0 wait-state is possible.
   */
   /*
   IQmathTables3    : > IQTABLES3, PAGE = 0, TYPE = NOLOAD
   {

              IQmath.lib<IQNasinTable.obj> (IQmathTablesRam)

   }
   */

}

/*
//===========================================================================
// End of file.
//===========================================================================
*/

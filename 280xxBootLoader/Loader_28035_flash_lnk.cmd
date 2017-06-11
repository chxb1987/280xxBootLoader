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
PAGE 0 :
   /******RAM******/
   RAML0         : origin = 0x008000, length = 0x000800     /* on-chip RAM block L0 */
   RAML1         : origin = 0x008800, length = 0x000400     /* on-chip RAM block L1 */

   /****FLASH C********/

   /****FLASH A********/
   LOADER_DESC  : origin = 0x3F6000, length = 0x000008  /*loader descriptor*/
   LOADER       : origin = 0x3F6008, length = 0x001F78  /*loader main program*/
   BEGIN        : origin = 0x3F7FF6, length = 0x000002  /* "jump to flash" ,  for codestart function - in codeStartBrunch.asm  */

   /****FLASH C********/
   APP_DESC      : origin = 0x3E8000, length = 0x000008   /*main application descriptor*/


   /****ROM*******/
   RESET      : origin = 0x3FFFC0, length = 0x000002
   IQTABLES   : origin = 0x3FE000, length = 0x000B50     /* IQ Math Tables in Boot ROM */
   IQTABLES2  : origin = 0x3FEB50, length = 0x00008C     /* IQ Math Tables in Boot ROM */
   IQTABLES3  : origin = 0x3FEBDC, length = 0x0000AA	 /* IQ Math Tables in Boot ROM */

   BOOTROM    : origin = 0x3FF27C, length = 0x000D44
PAGE 1 :

   /****ROM*******/
   BOOT_RSVD   : origin = 0x000002, length = 0x00004E     /* Part of M0, BOOT rom will use this for stack */

   /******RAM******/
   RAMM1       : origin = 0x000480, length = 0x000380     /* on-chip RAM block M1 */
   RAML2       : origin = 0x008C00, length = 0x000400
   RAML3       : origin = 0x009000, length = 0x001000
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
					 RUN = RAML0,
				 	 LOAD_START(_RamfuncsLoadStart),
					 LOAD_END(_RamfuncsLoadEnd),
					 LOAD_SIZE(_RamfuncsLoadSize),
					 RUN_START(_RamfuncsRunStart),
					 PAGE = 0

   .econst          : > LOADER,    PAGE = 0
   .switch          : > LOADER,    PAGE = 0
   IQmath           : > LOADER,    PAGE = 0


	/*********RAM**************************/
   .stack           : > RAMM1,     PAGE = 1
   .ebss            : > RAMM1 | RAML2 | RAML3,     PAGE = 1
   .esysmem         : > RAMM1 | RAML2 | RAML3,     PAGE = 1
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

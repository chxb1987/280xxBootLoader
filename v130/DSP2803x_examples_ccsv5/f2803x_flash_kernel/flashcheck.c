/**
* @file flashcheck.c
* @brief MDRIVE controller program flash tester
*
* @author Eli Schneider
*
* @version 0.0.1
* @date 20.01.2010
*/
#include <stdint.h>
#include "flashcheck.h"

#include "descriptor.h"


/**
* @fn overallProgramFlashTest
*
* @brief This function tests the program area of the flash memory.
*
* At first it reads the FLASH checksum stored in FlashChecksum constant in the program FLASH memory.\n
* Then it calculates 32-bit sum of all words in FLASH memory. If the result is 0 or	0xFFFFFFFF it adds 2 to the checksum.\n
* Afterwards it compares the computed checksum with the stored checksum.	If equal the test passes. Otherwise, 
* if the stored checksum is non-zero the test fails.\n
* When the stored checksum is zero the test passes even if the stored and computed checksums are not equal. 
* This is a special feature for software debugging and program version release.\n
*
* Notes:
* - Two special symbols must be defined in the linker .cmd file:
* 	-  _FlashCodeStart: Designates the start of code in flash memory
* 	-  _FlashCodeEnd: Designates the end of code in flash memory
* 
*
* @return - 0 = test pass, 1 = test fail 
*
* @author Eli Schneider
* @author Shlomi Dar
* @date 20.01.2010
*
*/

#define FLASH_B_START_ADRR
#define FLASH_H_START_ADRR


uint32_t flashChecksumCalc(uint16_t *CodeStart,uint16_t *CodeEnd)
{
	uint32_t checksum=0;
	uint16_t *addr;

	for (addr=CodeStart;addr!=CodeEnd;addr++)
		checksum+= *addr;

	if (checksum==0x00000000)
		checksum+=2;
	else if (checksum==0xffffffff)
		checksum+=2;

	return checksum;
}

int overallProgramFlashTest(void)
{

	volatile uint32_t flashChecksum=0;

	if (appDesc.programChecksum==0) //skip test
		return 0;

	/*test application sectors: C,D,E,F,G,H (without appDesc) */
	flashChecksum=flashChecksumCalc((uint16_t *)CODE_START,(uint16_t *)CODE_END);

	if (flashChecksum==appDesc.programChecksum)
		return 0;
	else
		return 1;

}




#ifdef KUKU
#define FLASHA_END 0x3F7FFF
#define FLASHA_START 0x3F4000
Uint32 LoaderCheckSum(void)
{
	uint16_t *addr;

	flashChecksum=0;

	DISABLE_DOG();
	for (addr=(uint16_t *)FLASHA_START;addr!=(uint16_t *)FLASHA_END;addr++)
		flashChecksum+= *addr;
	ENABLE_DOG();

	return flashChecksum;
}

Uint32 wipeCheckSum(void)
{
	uint16_t *addr;

	DISABLE_DOG();
	EALLOW;
	for (addr=(uint16_t *)&FlashCodeStart;addr!=(uint16_t *)&FlashCodeEnd;addr++)
	{
		*addr= 0xFF;
		*addr= 0x00;
	}
	EDIS;
	ENABLE_DOG();
	
	return 1;
}
#endif

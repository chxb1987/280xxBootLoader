/**
* @file descriptor.c
* @brief Brief description
*        Brief description continued
* 
* Detailed description starts here
*
* @author Shlomi Dar
*
* @version Version number
* @date 6 באפר׳ 2017
* @copyright (C)2017 Redler Technologies Ltd.
*
*
*	Application descriptor tells loader what is program checksum
*	and what is the application entry point
*/
#include "descriptor.h"
#include "flashcheck.h"


extern void c_int00(void);



/***********Loader descriptor********************/
#pragma DATA_SECTION(loaderDesc, ".loaderDesc");
const struct sAppInterfaceTable loaderDesc=
			{
			    LOADER_VER,
				0xFFFFFFFF, // programChecksum
				/*(void (*)())*/c_int00 // entry
			};

/************Main Application descriptor*****************/
#pragma DATA_SECTION(appDesc, ".appDesc");
struct sAppInterfaceTable appDesc;




Uint32 checkAppBoot()
{

	if (overallProgramFlashTest()) //Program corrupted => return loader.
		return (Uint32)loaderDesc.entry;

	if (((Uint32)appDesc.entry)==0xFFFFFFFF) //Application descriptor erased => return loader.
		return (Uint32)loaderDesc.entry;


	return (Uint32)appDesc.entry; //All OK => return application descriptor
}


Uint32 LoaderBoot()
{
	return (Uint32)loaderDesc.entry;
}

void callBootLoader()
{
	InitBootLoader();
}

void callMain()
{
	InitBoot();
}






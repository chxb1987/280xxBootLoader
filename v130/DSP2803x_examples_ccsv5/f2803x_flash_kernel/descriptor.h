/**
* @file descriptor.h
* @brief Brief description
*        Brief description continued
* 
* Detailed description starts here
*
** @author Shlomi Dar
* @author Eli Schneider
*
* @version Version number
* @date 6 באפר׳ 2017
* @copyright (C)2017 Redler Technologies Ltd.
*
*
*
*/

/* Includes --------------------------------------------------------------------------------------*/
#include "DSP2803x_Device.h"

/* Private variables -----------------------------------------------------------------------------*/


/*typedefs -------------------------------------------------------------------------------------- */


/* defines ---------------------------------------------------------------------------------------*/
/***********Software Rev***************/
#define SW_MAJOR	 00
#define SW_MINOR	 02
#define SW_SUBMINOR	 00
#define SW_PATCH 	 00

#define LOADER_VER (SW_MAJOR*1000000+SW_MINOR*10000+SW_SUBMINOR*100+SW_PATCH)
/***********Software Rev***************/

/* macros ----------------------------------------------------------------------------------------*/


/* function prototypes --------------------------------------------------------------------------*/
void InitBootLoader(); //asm function
Uint32 LoaderBoot();


/* variable prototypes --------------------- -----------------------------------------------------*/


extern struct sAppInterfaceTable appDesc;


#ifndef APPLICATIONDESC_H_
#define APPLICATIONDESC_H_






struct sAppInterfaceTable
{
	Uint32 version; 		/* application version */
	Uint32 programChecksum;	/* application program checksum */
	void (*entry)();		/* application entry point */
};

Uint32 checkAppBoot();
void callBootLoader();
void callMain();
void InitBoot();

#ifdef __cplusplus
extern "C" {
#endif
 

#ifdef __cplusplus
}
#endif

#endif /* APPLICATIONLOAD_H_ */

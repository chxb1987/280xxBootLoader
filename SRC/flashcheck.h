/**
* @file flashcheck.h
* @brief MDRIVE controller program flash tester interface
*
* @author Eli Schneider
*
* @version 0.0.1
* @date 20.01.2010
*/
#ifndef __FLASHCHECK_H
#define	__FLASHCHECK_H

#include <stdint.h>





#ifdef __cplusplus
extern "C" {
#endif

/*Flash CheckSum Range*/
#define DSP_F2803x 1
#define DSP_F2806x 2

#ifdef F2803x_PRE_DEF
#define DSP_TYPE DSP_F2803x
#endif
#ifdef F2806x_PRE_DEF
#define DSP_TYPE DSP_F2806x
#endif


#if (DSP_TYPE == DSP_F2803x)
#define CODE_START 0x3E8008
#define CODE_END 0x3F3FFF
#elif (DSP_TYPE == DSP_F2806x)
#define CODE_START 0x3D8008
#define CODE_END 0x3EFFFF
#else
#error DSP not defined
#endif
/**************************/

int overallProgramFlashTest(void);
uint32_t flashChecksumCalc(uint16_t *CodeStart,uint16_t *CodeEnd);


#ifdef __cplusplus
}
#endif /* extern "C" */

#endif


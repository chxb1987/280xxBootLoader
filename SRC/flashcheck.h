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

#define CODE_START 0x3E8008
#define CODE_END 0x3F3FFF

int overallProgramFlashTest(void);
uint32_t flashChecksumCalc(uint16_t *CodeStart,uint16_t *CodeEnd);


#ifdef __cplusplus
}
#endif /* extern "C" */

#endif


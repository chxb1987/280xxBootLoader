/*
 * Copyright (c) 2015-2015 Texas Instruments Incorporated
 *
 * This code was taken from FreeBSD verbatim, and is clearly a derived
 * work of the FreeBSD file s_lrint.c, which carries a full BSD-style
 * copyright and licensing notice.  We presume this file is intended
 * to have the same copyright and licensing.
 */

#define type		float
#define	roundit		rintf
#define dtype		long long
#define	fn		llrintf

#include "s_lrint.c"

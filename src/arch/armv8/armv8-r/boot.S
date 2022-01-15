/** 
 * Bao, a Lightweight Static Partitioning Hypervisor 
 *
 * Copyright (c) Bao Project (www.bao-project.org), 2019-
 *
 * Authors:
 *      Sandro Pinto <sandro@bao-project.org>
 *      Afonso Santos <afomms@gmail.com>
 *
 * Bao is free software; you can redistribute it and/or modify it under the
 * terms of the GNU General Public License version 2 as published by the Free
 * Software Foundation, with a special exception exempting guest code from such
 * license. See the COPYING file in the top-level directory for details. 
 *
 */

#include <arch/bao.h>
#include <arch/sysregs.h>
#include <arch/page_table.h>
#include <asm_defs.h>

.data 
.align 3
/**
 * barrier is used to minimal synchronization in boot - other cores wait for
 * bsp to set it.
 */
_barrier: .8byte 0			

/**
 * 	The following code MUST be at the base of the image, as this is bao's entry
 *	point. Therefore .boot section must also be the first in the linker script.
 *  DO NOT implement any code before the _reset_handler in this section.
 */
 .section ".boot", "ax"
.globl _reset_handler
.globl _el2_entry
_el2_entry:
_reset_handler:

	// TBD

	b init

	/* This point should never be reached */
	b	.				

.endfunc

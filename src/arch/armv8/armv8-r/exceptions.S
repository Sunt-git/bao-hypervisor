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
#include <asm_defs.h>

#define ENTRY_SIZE   (0x80)

.text 

.macro SAVE_HYP_GPRS

     # TBD

.endm

.macro VM_EXIT
    
     # TBD

.endm

.global vcpu_arch_entry
vcpu_arch_entry:
    # TBD
    b   .

.balign 0x800
.global _hyp_vector_table	
_hyp_vector_table:
          
      

/* 
 * Lower EL using AArch32
 */  
.balign ENTRY_SIZE   
lower_el_aarch32_sync:  
    # TBD 
    b	.
.balign ENTRY_SIZE
lower_el_aarch32_irq:  
    # TBD   
    b	.
.balign ENTRY_SIZE
lower_el_aarch32_fiq:    
    # TBD 
    b	.
.balign ENTRY_SIZE
lower_el_aarch32_serror: 
    # TBD 
    b	.

.balign ENTRY_SIZE          

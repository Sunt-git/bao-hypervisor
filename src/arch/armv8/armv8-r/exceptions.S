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
 * EL2 with SP0
 */  
.balign ENTRY_SIZE
curr_el_sp0_sync:        
    b	.
.balign ENTRY_SIZE
curr_el_sp0_irq:  
    b   .
.balign ENTRY_SIZE
curr_el_sp0_fiq:         
    b	.
.balign ENTRY_SIZE
curr_el_sp0_serror:      
    b	.
          

/* 
 * EL2 with SPx
 */  
.balign ENTRY_SIZE  
curr_el_spx_sync:
    SAVE_HYP_GPRS
    mov x0, sp
    bl	internal_abort_handler        
    b	.
.balign ENTRY_SIZE
curr_el_spx_irq:         
    b	.
.balign ENTRY_SIZE
curr_el_spx_fiq:         
    b	.
.balign ENTRY_SIZE
curr_el_spx_serror:
    SAVE_HYP_GPRS
    mov x0, sp
    bl	internal_abort_handler       
    b	.         

/* 
 * Lower EL using AArch64
 */  

.balign ENTRY_SIZE
lower_el_aarch64_sync:
    VM_EXIT
    bl	aborts_sync_handler
    b   vcpu_arch_entry
.balign ENTRY_SIZE
lower_el_aarch64_irq:    
    VM_EXIT
    bl  gic_handle
    b   vcpu_arch_entry
.balign ENTRY_SIZE
lower_el_aarch64_fiq:    
    b	.
.balign ENTRY_SIZE
lower_el_aarch64_serror: 
    b	.          

/* 
 * Lower EL using AArch32
 */  
.balign ENTRY_SIZE   
lower_el_aarch32_sync:   
    b	.
.balign ENTRY_SIZE
lower_el_aarch32_irq:    
    b	.
.balign ENTRY_SIZE
lower_el_aarch32_fiq:    
    b	.
.balign ENTRY_SIZE
lower_el_aarch32_serror: 
    b	.

.balign ENTRY_SIZE          

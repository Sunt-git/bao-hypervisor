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

#ifndef __ARCH_TLB_H__
#define __ARCH_TLB_H__

#include <bao.h>
#include <arch/sysregs.h>
#include <arch/fences.h>


static inline void tlb_vm_inv_all(asid_t vmid)
{
    /* TODO: */
}

#endif /* __ARCH_TLB_H__ */

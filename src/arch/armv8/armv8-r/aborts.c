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

#include <arch/aborts.h>
#include <arch/sysregs.h>
#include <cpu.h>
#include <vm.h>
#include <emul.h>
#include <arch/psci.h>
#include <hypercall.h>

typedef void (*abort_handler_t)(uint64_t, uint64_t, uint64_t);

void internal_abort_handler(uint64_t gprs[]) 
{
    /* TBD */
}

void aborts_data_lower(uint64_t iss, uint64_t far, uint64_t il)
{
    /* TBD */
}


void hvc64_handler(uint64_t iss, uint64_t far, uint64_t il)
{
    /* TBD */
}

void sysreg_handler(uint64_t iss, uint64_t far, uint64_t il)
{
    /* TBD */
}

abort_handler_t abort_handlers[64] = {};

void aborts_sync_handler()
{
    /* TBD */
}

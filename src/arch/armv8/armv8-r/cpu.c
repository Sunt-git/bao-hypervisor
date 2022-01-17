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

#include <bao.h>
#include <cpu.h>
#include <platform.h>
#include <page_table.h>
#include <arch/sysregs.h>

cpuid_t CPU_MASTER __attribute__((section(".data")));

/* Perform architecture dependent cpu cores initializations */
void cpu_arch_init(cpuid_t cpuid, paddr_t load_addr)
{   
    /* TBD */
}

unsigned long cpu_id_to_mpidr(cpuid_t id)
{
    /* TBD */
}

void cpu_arch_idle()
{
    /* TBD */
}

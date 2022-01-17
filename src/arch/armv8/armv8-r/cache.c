/** 
 * Bao, a Lightweight Static Partitioning Hypervisor 
 *
 * Copyright (c) Bao Project (www.bao-project.org), 2019-
 *
 * Authors:
 *      Jose Martins <jose.martins@bao-project.org>
 *
 * Bao is free software; you can redistribute it and/or modify it under the
 * terms of the GNU General Public License version 2 as published by the Free
 * Software Foundation, with a special exception exempting guest code from such
 * license. See the COPYING file in the top-level directory for details. 
 *
 */

#include <cache.h>
#include <arch/sysregs.h>
#include <fences.h>
#include <bit.h>
#include <platform.h>

void cache_arch_enumerate(struct cache *dscrp)
{
    /* TBD */
}

void cache_flush_range(vaddr_t base, size_t size)
{
    /* TBD */
}

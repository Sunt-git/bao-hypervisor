## 
 # Bao, a Lightweight Static Partitioning Hypervisor 
 #
 # Copyright (c) Bao Project (www.bao-project.org), 2019-
 #
 # Authors:
 #      Sandro Pinto <sandro@bao-project.org>
 #
 # Bao is free software; you can redistribute it and/or modify it under the
 # terms of the GNU General Public License version 2 as published by the Free
 # Software Foundation, with a special exception exempting guest code from such
 # license. See the COPYING file in the top-level directory for details. 
 #
##

subarch-objs-y+=boot.o
subarch-objs-y+=exceptions.o
subarch-objs-y+=pagetables.o
subarch-objs-y+=relocate.o
subarch-objs-y+=smc.o
subarch-objs-y+=aborts.o
subarch-objs-y+=cache.o
subarch-objs-y+=cpu.o
subarch-objs-y+=psci.o
subarch-objs-y+=mem.o
subarch-objs-y+=page_table.o
subarch-objs-y+=vmm.o

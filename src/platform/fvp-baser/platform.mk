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

# Architecture definition
ARCH:=armv8
SUB_ARCH:=armv8-r
# CPU definition
CPU:=cortex-r52

GIC_VERSION:=GICV3

drivers = pl011_uart

platform-cppflags =
platform-cflags = -mcpu=$(CPU)
platform-asflags =
platform-ldflags =
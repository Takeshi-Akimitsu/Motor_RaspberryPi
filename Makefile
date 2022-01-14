# SPDX-License-Identifier: GPL-3.0
obj-m := mymotor.o

mymotor.ko: mymotor.c
	make -C /usr/src/linux-headers-`uname -r` M=`pwd` V=1 modules

clean:
	make -C /usr/src/linux-headers-`uname -r` M=`pwd` V=1 clean

# Makefile for building the kernel module

# Specify the name of the module
obj-m += hello.o

# KERNELDIR is the path to the kernel source tree
KERNELDIR ?= /lib/modules/$(shell uname -r)/build

# PWD is the current working directory
PWD := $(shell pwd)

all:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean

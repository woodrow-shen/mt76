ARCH := x86_64
ifeq ($(ARCH),arm)
CC := arm-linux-gnueabihf-
else ifeq ($(ARCH),x86_64)
CC := x86_64-linux-gnu-
else
CC ?=
endif

ifneq ($(KERNELRELEASE),)
KDIR ?= /lib/modules/$(KERNELRELEASE)/build
endif

KDIR ?= /lib/modules/`uname -r`/build

default:
		$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(CC) -C $(KDIR) M=$$PWD
clean:
		$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(CC) -C $(KDIR) M=$$PWD clean
install:
		$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(CC) -C $(KDIR) M=$$PWD modules_install

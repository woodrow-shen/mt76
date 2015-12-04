CC := arm-linux-gnueabihf-

ifneq ($(KERNELRELEASE),)
KDIR ?= /lib/modules/$(KERNELRELEASE)/build
endif

KDIR ?= /workzone/Snappy-dev/ubuntu-snappy-armhf-fukuoka/kernel/
#KDIR ?= /lib/modules/`uname -r`/build

default:
		$(MAKE) ARCH=arm CROSS_COMPILE=$(CC) -C $(KDIR) M=$$PWD
clean:
		$(MAKE) ARCH=arm CROSS_COMPILE=$(CC) -C $(KDIR) M=$$PWD clean
install:
		$(MAKE) ARCH=arm CROSS_COMPILE=$(CC) -C $(KDIR) M=$$PWD modules_install

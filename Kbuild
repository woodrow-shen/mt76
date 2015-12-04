EXTRA_CFLAGS += -Werror -Wenum-compare
ccflags-y += -D__CHECK_ENDIAN__

obj-m := mt76pci.o

mt76pci-y := \
		pci.o dma.o \
		main.o init.o debugfs.o tx.o util.o \
		core.o mac.o eeprom.o mcu.o phy.o \
		trace.o

mt76pci-$(CONFIG_OF) += of.o

CFLAGS_trace.o := -I$(src)

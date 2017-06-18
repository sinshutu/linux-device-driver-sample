obj-m += hello.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

install: hello.ko
	insmod hello.ko

uninstall: hello.ko
	rmmod hello

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

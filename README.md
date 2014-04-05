xnu_build
=========

Build system for XNU compilation and GenericBooter compilation (Really not too pretty or useful.)

I plan to put up a full envoirment setup guide here, for OS X, Otherwise winocm's instructions are fairly straight forward.

Dependencies
==========
## mkimage

	brew install u-boot-tools
## arm-none-eabi toolchain

	brew install mpfr gmp libmpc libelf texinfo
And then

	git clone https://github.com/jsnyder/arm-eabi-toolchain
	cd arm-eabi-toolchain
	make install-cross
## qemu

	brew install qemu

Building XNU and GenericBooter for Qemu
===============================

Winocm has a list of valid target configs in the xnu root directory in the machine_configuration file.
My "Makefile" builds for "debug arm armpba8" but that can be changed by you.

## Using my Makefile
Clone this repository

	git clone https://github.com/Haifisch/xnu_build.git
	cd xnu_build

Build the kernel

	make xnu

Image3maker can be found [here](https://github.com/darwin-on-arm/image3maker), but the syntax is different from mine. So you'll need to make the img3 yourself. It's easy.

Example usage:

	image3maker --dataFile xnu/BUILD/obj/mach.debug.armpba8 --imageTag krnl --outputFile GenericBooter/mach.img3

Build the bootloader

	make bootloader

Run the kernel in qemu

	make qemu-run

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
Later...

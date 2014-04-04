BOOTARGS = "rd=md0 debug=0x16e serial=3 -v -s"
QEMU_MEMORY = 1024
MACHINE = realview-pb-a8
BOOTABLE = GenericBooter/SampleBooter.elf.uImage
NOGRAPHICS = TRUE

xnu:
	cd xnu; make TARGET_CONFIG="debug arm armpba8"

bootloader:
	cd GenericBooter/; make

img3:
	image3maker --create --imagefile GenericBooter/mach.img3 --type krnl --data xnu/BUILD/obj/mach.debug.armpba8

qemu-run:
	qemu-system-arm -machine $(MACHINE) -m $(QEMU_MEMORY) -kernel $(BOOTABLE) -append $(BOOTARGS) -serial stdio -nographics
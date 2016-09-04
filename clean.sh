# location
export KERNELDIR=`readlink -f .`;
if [ -e $KERNELDIR/arch/arm64/boot/dtb.img ]; then
	rm $KERNELDIR/arch/arm64/boot/dtb.img;
fi;
rm -rf $KERNELDIR/arch/arm64/boot/dts/*.dtb;
rm -rf $KERNELDIR/arch/arm64/boot/dtb/;
make clean
make ARCH=arm64 distclean

rm -rf /home/voltaqe/boot7/image-new.img;
rm -rf /home/voltaqe/boot7/ramdisk-new.cpio.gz;

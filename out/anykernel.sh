# AnyKernel2 Ramdisk Mod Script
# osm0sis @ XDA

## AnyKernel setup
# begin properties
properties() {
kernel.string=Stock Kernel
do.devicecheck=0
do.modules=0
do.cleanup=1
do.cleanuponabort=1
device.name1=
device.name2=
} # end properties

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. /tmp/anykernel/tools/ak2-core.sh;

ui_print "     ____  ____  ____  __________   ";
ui_print "    / __ \/ __ \/ __ \/_  __/ __ \  ";
ui_print "   / /_/ / /_/ / / / / / / / / / /  ";
ui_print "  / ____/ _, _/ /_/ / / / / /_/ /   ";
ui_print " /_/   /_/ |_|\____/ /_/  \____/    ";
ui_print "                                    ";
ui_print "     by JBolho and nutcasev1.5      ";
ui_print "                                    ";
ui_print "     beta testing --- Hugoclaw      ";
ui_print "                                    ";
ui_print "     Honor 9 and P10 certified      ";

# shell variables
block=/dev/block/bootdevice/by-name/kernel;
ramdisk_compression=auto;

# reset for kernel patching
reset_ak;
mv /tmp/anykernel/kernel-Image.gz /tmp/anykernel/Image.gz;


## AnyKernel kernel install

ui_print "Kernel is being infused";

split_boot;

flash_boot;

## end install

#!/bin/bash
export BUILD_ROOT=$PWD
echo "copy prebuilt files..."
mkdir build
cp ./prebuilt/bin/config build/.config
cp ./prebuilt/bin/host-a15.dtb build/
cp ./prebuilt/bin/vexpress_a15_guest.dtb build/
cp ./prebuilt/bin/fs.cpio linux/
make menuconfig ARCH=arm


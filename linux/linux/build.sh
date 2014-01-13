#!/bin/bash
CROSS_COMPILE=arm-linux-gnueabihf- ARCH=arm make -j4
cp arch/arm/boot/zImage ../../build/

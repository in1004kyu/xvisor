#!/bin/bash
export BUILD_ROOT=$PWD
cd build
echo $PWD
$BUILD_ROOT/prebuilt/arm-2013.05/bin/arm-none-eabi-gcc -nostdlib -march=armv7-a -mcpu=cortex-a15 -e start_boot -Wl,-Ttext=0x80000000 -DVEXPRESS_A15 -DGIC_DIST_NONSECURED -DSPIN_LOOP_ADDR=0x84000000 -DIMAGE=./fast_model_boot.img ../docs/arm/fast_model_boot.S -o fast_model_boot.axf; 
cd $BUILD_ROOT

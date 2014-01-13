#!/bin/bash
export BUILD_ROOT=$PWD
echo "build Guest Linux"
cd $BUILD_ROOT/linux/linux
./build.sh
echo "build "
cd $BUILD_ROOT/
cat ./build/host-a15.dtb >> ./build/zImage

#!/bin/bash
export BUILD_ROOT=$PWD
echo "build xvisor..."
./build_vmm.sh
echo "build guest0 linux..."
cd $BUILD_ROOT
./build_linux.sh
echo "build guest0 bootloader..."
cd $BUILD_ROOT
./build_basic_firm.sh
cd $BUILD_ROOT
echo "merge images..."
./build_merge_zImage.sh
echo "generate axf image..."
cd $BUILD_ROOT
./build_axf.sh


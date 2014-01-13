#!/bin/bash
export BUILD_ROOT=$PWD
echo "clean.. xvisor..."
make clean
echo "clean guest0 linux..."
cd linux/linux
make clean
cd $BUILD_ROOT


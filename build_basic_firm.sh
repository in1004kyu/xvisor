
#!/bin/bash
export BUILD_ROOT=$PWD
make ARCH=arm CROSS_COMPILE=$BUILD_ROOT/prebuilt/arm-2013.05/bin/arm-none-eabi- -C tests/arm32/vexpress-a15/basic

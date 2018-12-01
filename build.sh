#!/bin/bash

echo -e "Making LG H850 kernel\n"
export PATH=$PATH:/opt/gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu/bin/
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-

make device_h850_defconfig

make -j7

# modules
# find ./ -type f -name '*.ko' -exec cp -f {} ../zip/system/lib/modules/ \;

# copy zImage
# cp -f arch/arm64/boot/Image.gz-dtb ../zip/kernel/zImage
# ls -l ../zip/kernel/zImage
# cd ../zip
# zip -r -9 op3_vN.zip * > /dev/null
# mv op3_vN.zip ../

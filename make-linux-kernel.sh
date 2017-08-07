#!/bin/sh 

cd kernel
#make defconfig distro.config
make -j32
make dtbs
#make savedefconfig 
cd ..
rm -f -r dt.img
./skales/dtbTool -o dt.img -s 2048 kernel/arch/arm64/boot/dts/qcom/



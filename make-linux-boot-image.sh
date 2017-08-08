#!/bin/sh 

./skales/mkbootimg --kernel kernel/arch/arm64/boot/Image \
                   --ramdisk ramfs/initrd.img-4.4.9-linaro-lt-qcom \
                   --output boot-db410c.img \
                   --dt dt.img \
                   --pagesize 2048 \
                   --base 0x80000000 \
                   --cmdline "root=/dev/mmcblk0p10 rw rootwait console=ttyMSM0,115200n8"




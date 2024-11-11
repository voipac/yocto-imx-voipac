#!/bin/sh

zstd -fd voipac-image-imx93-voipac.sdimg.zst

sudo ./uuu -b emmc_all imx-boot-flashing voipac-image-imx93-voipac.sdimg
# flash mender u-boot
sudo ./uuu uuu.lst

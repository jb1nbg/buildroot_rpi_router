#!/bin/bash

cp ./output/build/linux-custom/.config ./board/raspberrypi4/linux.config
cp ./output/build/busybox-1.31.0/.config ./board/raspberrypi4/busybox.config
cp ./.config ./configs/rpi-router_defconfig


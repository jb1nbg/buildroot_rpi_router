#!/bin/sh

cp custom/config.txt output/images/rpi-firmware/
cp custom/cmdline.txt output/images/rpi-firmware/

chmod 600 $TARGET_DIR/etc/ssh/*_key
chmod 600 $TARGET_DIR/etc/ssh/*_key.pub

chmod 600 $TARGET_DIR/etc/NetworkManager/NetworkManager.conf
chmod 600 $TARGET_DIR/etc/NetworkManager/system-connections/*.nmconnection

rm -f $TARGET_DIR/etc/resolv.conf
touch $TARGET_DIR/etc/resolv.conf

if [ -e $TARGET_DIR/etc/init.d/S50sshd ]; then
    rm -f $TARGET_DIR/etc/init.d/S99sshd
    mv $TARGET_DIR/etc/init.d/S50sshd $TARGET_DIR/etc/init.d/S99sshd
fi

cp -a output/host/arm-buildroot-linux-gnueabihf/sysroot/lib/libatomic.so* $TARGET_DIR/lib/
cp -a output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/lib/libstdc++.so $TARGET_DIR/lib/
cp -a output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/lib/libstdc++.so.6 $TARGET_DIR/lib/
cp -a output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/lib/libstdc++.so.6.0.25 $TARGET_DIR/lib/

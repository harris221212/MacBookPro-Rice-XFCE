#!/bin/sh
apt install firefox
cp xcape-super-bindings.desktop /etc/xdg/xdg-xubuntu/autostart/
cp 65-keyboard-custom.hwdb /lib/udev/hwdb.d/
systemd-hwdb update
cp keyboard /etc/default/
cp 60-synaptics-options.conf /etc/X11/xorg.conf.d/60-synaptics-options.conf
cd ~/Programs/st
-u $1 patch -Np1 -i st-scrollback-0.8.5.diff
-u $1 patch -Np1 -i st-scrollback-mouse-20220127-2c5edf2.diff
-u $1 patch -Np1 -i st-scrollback-mouse-altscreen-20220127-2c5edf2.diff
-u $1 patch -Np1 -i st-anysize-20220718-baa9357.diff
-u $1 patch -Np1 -i st-desktopentry-0.8.5.diff
-u $1 patch -Np1 -i st-netwmicon-0.8.5-v2.diff
-u $1 patch -Np1 -i st-charoffsets-20220311-0.8.5.diff
make clean install
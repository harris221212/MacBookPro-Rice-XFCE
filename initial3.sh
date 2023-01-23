#!/bin/sh
cp xcape-super-bindings.desktop /etc/xdg/xdg-xubuntu/autostart/
cp 65-keyboard-custom.hwdb /lib/udev/hwdb.d/
systemd-hwdb update
cp keyboard /etc/default/
cp 60-synaptics-options.conf /etc/X11/xorg.conf.d/60-synaptics-options.conf

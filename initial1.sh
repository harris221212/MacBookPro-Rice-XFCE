#!/bin/sh
apt install rofi mpv mousepad htop btop xfce-genmon-plugin mbpfan
add-apt-repository ppa:papirus/papirus
apt-get update
apt-get install papirus-icon-theme
apt install ./code_1.74.3-1673284829_amd64
snap remove firefox
add-apt-repository ppa:mozillateam/ppa
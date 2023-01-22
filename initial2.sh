#!/bin/sh
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox
mkdir ~/.config/btop
cp btop.conf ~/.config/btop/
mkdir -p ~/.config/Code/User
cp settings.json ~/.config/Code/User/
mkdir ~/.config/rofi
cp config.rasi ~/.config/rofi/
cp gtk.css ~/.config/gtk-3.0/
mkdir ~/.local/share/rofi/themes
cp harris.rasi ~/.local/share/rofi/themes/
mkdir ~/.config/neofetch
cp neofetch/config.cong ~/.config/neofetch/
mkdir ~/.local/share/gtksourceview-4/styles
cp railscasts.xml ~/.local/share/gtksourceview-4/styles/
mkdir ~/Programs
cd
git clone https://git.suckless.org/st ~/Programs/
cp -r xfconf ~/.config/xfce4/
cp -r panel ~/.config/xfce4/
cp -r Programs/xfce4 ~/Programs/
cp .bashrc ~/

#Theme Setup

cp -r /usr/share/themes/Greybird-dark .
cp gtkGreybird.css Greybird-dark/gtk-3.0/gtk.css
cp -r Greybird-dark ~/.themes/Greybird-custom

cp config.h ~/Programs/st/
cp config.mk ~/Programs/st/

echo "set enable-keypad on" >> ~/.inputrc
echo 'set completion-ignore-case On' >> ~/.inputrc
#!/bin/bash

echo "######################"
echo "# dotfiles Installer #"
echo "######################"
echo "    for Arch Linux    "
echo "**********************"

pacman -S geany base-devel vim ncmpcpp mpd mpc xcompmgr xwallpaper xclip newsboat ranger zathura R qutebrowser tcl tk mpv libpng libjpeg-turbo webkit2gtk gtk2 gtk3 gtkmm gtkmm3 wxgtk-common wxgtk3 grc gst-libav gst-plugins-good
cp -rf .* $HOME
cp -rf Pictures/* $HOME/Pictures/
rm -rf $HOME/.git
xrdb $HOME/.Xresources

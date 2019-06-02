#!/bin/bash

echo "######################"
echo "# dotfiles Installer #"
echo "######################"
echo "    for Arch Linux    "
echo "**********************"

pacman -S base-devel vim ncmpcpp mpd mpc xcompmgr xwallpaper xclip newsboat ranger zathura R qutebrowser tcl tk mpv
cp -rf .* $HOME
cp -rf Pictures/* $HOME/Pictures/
rm -rf $HOME/.git
xrdb $HOME/.Xresources

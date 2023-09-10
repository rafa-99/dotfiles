#!/bin/sh

. "$HOME"/.config/shell/env
slstatus &
xwallpaper --stretch "$WALLPAPER" &
setxkbmap -option caps:super &
picom &
dwm

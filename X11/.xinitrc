#!/bin/sh

. "$HOME"/.xprofile
slstatus &
xwallpaper --stretch "$WALLPAPER" &
picom -f --fade-delta=5 &
setxkbmap pt &
numlockx on &
exec "$SESSION"

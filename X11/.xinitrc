#!/bin/sh

. "$HOME"/.xprofile
slstatus &
xwallpaper --stretch "$WALLPAPER" &
setxkbmap pt &
numlockx on &
unclutter --timeout 2 &
exec "$SESSION"

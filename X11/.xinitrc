#!/bin/sh

. "$HOME"/.xprofile
slstatus &
xwallpaper --stretch "$WALLPAPER" &
setxkbmap pt &
numlockx on &
exec "$SESSION"

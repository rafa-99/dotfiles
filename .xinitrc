#!/bin/sh

. "$HOME"/.xprofile
exec dbus-launch "$SESSION"

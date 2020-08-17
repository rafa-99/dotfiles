#!/bin/sh

# Profile file. Runs on login. Environmental variables are set here.
# Adds ~/.local/bin to $PATH
export PATH="$HOME/.local/bin:$PATH"
pulseaudio -D

# Default programs
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="qutebrowser"
export READER="zathura"
export FILE="vifm"
export DISTRO="REPLACEDISTRO"
export INIT="REPLACEINIT"

# Home directory clean-up
export SUCK="$HOME"/.local/src/suck
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export LESSHISTFILE="-"
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc-2.0
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
export ATOM_HOME="$XDG_CONFIG_HOME"/Atom
export XAUTHORITY="$XDG_CONFIG_HOME"/X11/Xauthority
export GNUPGHOME="$XDG_CONFIG_HOME"/gnupg
export WINEPREFIX="$XDG_DATA_HOME"/wine/default

# Default Vars
export WALLPAPER="$XDG_CONFIG_HOME"/wallpaper/wallpaper.png

#Session Selection Menu
export SESSION=dwm
printf "Starting X, press Ctrl-C to interrupt\n"
printf "5"
sleep 1
printf " 4"
sleep 1
printf " 3"
sleep 1
printf " 2"
sleep 1
printf " 1"
sleep 1
printf "\n Starting...\n"
startx

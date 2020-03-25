#!/bin/sh

# Profile file. Runs on login. Environmental variables are set here.
# Grabs the  current distro
DISTRO="$(grep ^ID= /etc/os-release | sed s:ID=::g)"

# Adds ~/.local/bin to $PATH
export PATH="$HOME/.local/bin:$PATH"

# Default programs
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="tabbed surf -e"
export READER="zathura"
export FILE="vifm"
export DISTRO

# Home directory clean-up
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
export WALLPAPER="$HOME/.config/wallpaper/wallpaper.png"

#Session Selection Menu
clear
screenfetch
printf "Which Session\n1. BSPWM\n2. DWM\n3. XFCE\n -> " && read -r SESSION
case "$SESSION" in
	1)
		export SESSION=bspwm && startx
		;;
	2)
		export SESSION=dwm && startx
		;;
	3)
		export SESSION=xfce && startxfce4
		;;
	*)
		echo "Not Available"
		;;
esac

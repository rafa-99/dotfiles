#!/bin/sh

# Profile file. Runs on login. Environmental variables are set here.
# Grabs the  current distro
DISTRO="$(grep ^ID= /etc/os-release | sed s:ID=::g)"

# Adds ~/.local/bin to $PATH
export PATH="$HOME/.local/bin:$PATH"

# Default programs
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"
export FILE="vifm"
export DISTRO

# Home directory clean-up
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export ZDOTDIR="$HOME/.config/zsh"

# Default Vars
export WALLPAPER="$HOME/.config/wallpaper/wallpaper.png"

#Session Selection Menu
printf "Which Session\n1. BSPWM\n2. DWM\n -> " && read -r SESSION
case "$SESSION" in
	1)
		export SESSION=bspwm && startx
		;;
	2)
		export SESSION=dwm && startx
		;;
	*)
		echo "Not Available"
		;;
esac

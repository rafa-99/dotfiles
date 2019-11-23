#!/bin/sh

# Profile file. Runs on login. Environmental variables are set here.
# AutoStartX
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx

# Adds ~/.local/bin to $PATH
export PATH="$PATH:$HOME/.local/bin/"

# Default programs
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="tabbed surf -e"
export READER="zathura"
export FILE="vifm"

# Home directory clean-up
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export ZDOTDIR="$HOME/.config/zsh"

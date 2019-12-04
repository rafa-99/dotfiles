#!/bin/sh

# Profile file. Runs on login. Environmental variables are set here.
# Adds ~/.local/bin to $PATH
export PATH="$HOME/.local/bin:$PATH"

# Default programs
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"
export FILE="vifm"

# Home directory clean-up
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export ZDOTDIR="$HOME/.config/zsh"

# Default Vars
export WALLPAPER="$HOME/.config/wallpaper/wallpaper.png"

# Autostart X
startx

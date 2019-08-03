#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

#Load Aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

#Disable History
set +o history

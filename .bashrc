#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Aliases

#List
alias ls='ls --color=auto'

#pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"

#free memory
alias free="free -mt"

# .Xresources Reload
alias xr="xrdb ~/.Xresources"

# Pacman/Yay
alias update="sudo pacman -Syu"
alias cleanup="yay --noconfirm -Sc && yay -Rns $(pacman -Qtdq)"
alias install="yay -S"

# Git
alias add="git add"
alias stat="git status"
alias check="git cehckout"
alias commit="git commit -m"
alias push="git push origin"

# Fonts_Themes_Cursors_Icons
alias fc='fc-cache -fv'

# YoutubeDL
alias yt-mp3="youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0"
alias yt-mp4="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4'"

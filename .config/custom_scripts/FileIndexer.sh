#!/bin/bash

cat $HOME/.config/foldersrc | dmenu -i -l 20 | awk '{print $2}' | sed s:'$HOME':/home/"$(whoami)":g | xargs -I {} find "{}" -type f | sed s:/home/"$(whoami)":'$HOME':g | dmenu -i -l 20 | sed s:'$HOME':/home/"$(whoami)":g | xargs -I {} xdg-open "{}"

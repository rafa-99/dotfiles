#!/bin/bash

cat $HOME/.config/directorysrc | dmenu -i -l 20 | awk '{print $2}' | sed s:"~":/home/"$(whoami)":g | xargs -I {} find "{}" -type f | sed s:/home/"$(whoami)":"~":g | dmenu -i -l 20 | sed s:"~":/home/"$(whoami)":g | xargs -I {} xdg-open "{}"

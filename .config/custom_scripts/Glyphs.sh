#!/bin/bash

cat ~/.config/glyphsrc | dmenu -i -l 30 | awk '{print $1}' | xargs -I {} printf {} | xclip -selection clipboard

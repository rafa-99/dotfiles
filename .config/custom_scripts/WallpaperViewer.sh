#!/bin/bash

ls -d $HOME/Repositories/wallpapers/*/ | sed 's:'$HOME'/Repositories/wallpapers::g' | sed 's:/::g' | dmenu -l 20 | xargs -I {} sxiv $HOME/Repositories/wallpapers/{}/

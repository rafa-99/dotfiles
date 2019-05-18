#!/bin/bash

mpd & mpc playlist | nl | cut -c 4- | sed 's:\t:     :g' | dmenu -i -l 20 | awk '{print $1}' | xargs -I {} mpc play "{}"

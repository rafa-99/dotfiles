#!/bin/bash

mpc playlist | dmenu -i -l 30 | awk -F"- "  '{print $NF}' | awk -F "'" '{print $NF}' | xargs -I {} mpc searchplay "{}"

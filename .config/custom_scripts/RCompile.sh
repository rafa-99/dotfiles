#!/bin/bash

ls *.*md | dmenu -l 20 | xargs -I {} R -e "rmarkdown::render('"'{}'"')"
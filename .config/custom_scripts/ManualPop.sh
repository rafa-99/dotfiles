#!/bin/bash

man -k . | dmenu -l 20 | awk '{print $1}' | xargs st -e man 

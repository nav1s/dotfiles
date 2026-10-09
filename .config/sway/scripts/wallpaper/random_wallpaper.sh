#!/bin/sh
ln -f -s "$(find ~/Pictures/Wallpapers/Abstract/ -type f | shuf -n 1)" ~/bg.jpg
feh --bg-fill ~/bg.jpg


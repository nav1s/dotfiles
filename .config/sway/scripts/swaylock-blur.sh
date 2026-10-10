#!/bin/bash
IMAGE=/tmp/swaylock-bg.png

# Take a screenshot of the current workspace
grim $IMAGE
magick $IMAGE -blur 0x25 $IMAGE
swaylock --daemonize --image $IMAGE
rm $IMAGE

playerctl --all-players pause

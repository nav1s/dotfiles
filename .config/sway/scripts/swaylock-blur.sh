#!/bin/bash
IMAGE=/tmp/swaylock-bg.png

# Take a screenshot of the current workspace
grim $IMAGE

# Blur the screenshot (adjust 0x8 for stronger/weaker blur)
convert $IMAGE -blur 0x2 $IMAGE

# Lock the screen with the blurred screenshot
swaylock -i $IMAGE

# Clean up the file after unlocking
rm $IMAGE

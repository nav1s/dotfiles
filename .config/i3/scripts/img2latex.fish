#!/usr/bin/fish
set fname clipboard.png
set path /tmp/
flameshot gui
xclip -selection clipboard -t image/png -o > $path$fname
set output (pix2tex /tmp/clipboard.png)
echo $output | xclip -selection clipboard
notify-send "123"


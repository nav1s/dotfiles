#!/usr/bin/fish
set fname clipboard.png
set path /tmp

flameshot gui
notify-send "Processing Image..."
xclip -selection clipboard -t image/png -o > $path/$fname
set output (pix2tex /tmp/clipboard.png)
echo $output | 
sed 's.\\operatorname\*{lim}.\\llim\\\limits.g' |
sed 's.}}.} }.g' | 
xclip -selection clipboard
notify-send "Donezo"


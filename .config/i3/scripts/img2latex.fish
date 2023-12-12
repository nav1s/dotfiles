#!/usr/bin/fish
set fname clipboard.png
set dir /tmp/
set path $dir$fname

flameshot gui
notify-send "Processing Image..."
xclip -selection clipboard -t image/png -o > $path
set output (pix2tex $path)
echo $output | 
sed 's.\\operatorname\*{lim}.\\llim\\\limits.g' |
sed 's.}}.} }.g' | 
sed "s-$path: --" |
xclip -selection clipboard
notify-send "Donezo"


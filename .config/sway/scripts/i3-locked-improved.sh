#!/usr/bin/env fish

setxkbmap -model pc104 -layout us -option grp:alt_shift_toggle
playerctl --all-players pause
i3lock --pass-media-keys --color 000000 --keylayout 2 
setxkbmap -model pc104 -layout us,il -option grp:alt_shift_toggle

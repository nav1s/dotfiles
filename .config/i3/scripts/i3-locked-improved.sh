#!/usr/bin/env fish

setxkbmap -model pc104 -layout us -option grp:alt_shift_toggle
playerctl --all-players pause
i3lock --color 000000
setxkbmap -model pc104 -layout us,il -option grp:alt_shift_toggle

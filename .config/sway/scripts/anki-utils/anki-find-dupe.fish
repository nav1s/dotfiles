#!/usr/bin/env fish
set sleep_time 0.1

sleep $sleep_time
echo 'Ctrl+shift+x'
xdotool key Ctrl+shift+x

sleep $sleep_time
echo 'Ctrl+a'
xdotool key Ctrl+a

sleep $sleep_time
echo 'Ctrl+c'
xdotool key Ctrl+c

sleep $sleep_time
xdotool key ctrl+shift+tab

sleep $sleep_time
xdotool key Page_Up

set img (xclip -out | rg --only-matching paste-[A-Za-z0-9_.]+ | head --lines 1) 
echo $img deck:biu | xclip -selection clipboard

sleep $sleep_time
echo 'Ctrl+f'
xdotool key Ctrl+f

sleep $sleep_time
echo 'Ctrl+v'
xdotool key Ctrl+v

sleep $sleep_time
echo 'Enter'
xdotool key Enter

sleep $sleep_time
xdotool key ctrl+shift+l

sleep $sleep_time
xdotool key ctrl+shift+n

sleep $sleep_time
xdotool key ctrl+shift+l

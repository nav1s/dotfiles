#!/usr/bin/env fish
set sleep_time 0.5

sleep $sleep_time
echo 'Ctrl+shift+x'
xdotool key Ctrl+shift+x

sleep $sleep_time
echo 'Ctrl+a'
xdotool key Ctrl+a

sleep $sleep_time
echo 'Ctrl+c'
xdotool key Ctrl+c

xclip -out | rg --only-matching 'paste-.+"' | head --bytes -2 | xclip -selection clipboard

sleep $sleep_time
echo 'Ctrl+f'
xdotool key Ctrl+f

sleep $sleep_time
echo 'Ctrl+v'
xdotool key Ctrl+v

sleep $sleep_time
echo 'Enter'
xdotool key Enter

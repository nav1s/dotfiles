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

xclip -out | sed 's.{{c[0-9]*::..g' | sed 's.}}..g' | xclip -selection clipboard

sleep $sleep_time
echo 'Ctrl+v'
xdotool key Ctrl+v

sleep $sleep_time
echo 'Ctrl+shift+x'
xdotool key Ctrl+shift+x

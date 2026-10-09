#!/usr/bin/env fish
set sleep_time 0.1

set anki_utils '/home/work/.config/i3/scripts/anki-utils'
set fname '/tmp/random.random'


sleep $sleep_time
echo 'Ctrl+shift+x'
xdotool key Ctrl+shift+x

sleep $sleep_time
echo 'Ctrl+a'
xdotool key Ctrl+a

sleep $sleep_time
echo 'Ctrl+c'
xdotool key Ctrl+c

xclip -out > $fname
$anki_utils/anki-correct-cloze.py --file-name $fname | xclip -selection clipboard

sleep $sleep_time
echo 'Ctrl+v'
xdotool key Ctrl+v

sleep $sleep_time
echo 'Ctrl+shift+x'
xdotool key Ctrl+shift+x

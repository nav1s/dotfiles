#! /usr/bin/env fish

env LD_PRELOAD=/usr/lib/spotify-adblock.so $HOME/.local/share/spotify-launcher/install/usr/bin/spotify &>/dev/null &
~/.config/i3/scripts/output-switcher headphones
openscq31-cli set ambient-sound-mode noise-canceling
spd-say "$(bluetoothctl info | grep -i battery | awk '{print $NF}')"
playerctl --player=mpv play-pause
# playerctl --player=vlc play-pause
# playerctl --player=firefox.instance_1_61 play-pause

#!/usr/bin/env bash

xidlehook \
  `# Don't lock when there's a fullscreen application` \
  --not-when-fullscreen \
  `# Dim the screen after 10 minutes, undim if user becomes active` \
  --timer 600 \
    'notify-send "Lock sequence initiated"' \
    '' \
  `# Undim & lock after 10 more seconds` \
  --timer 60 \
    'xrandr --output "$PRIMARY_DISPLAY" --brightness 1; i3lock' \
    '' \
  `# Finally, suspend an hour after it locks` \
  --timer 3600 \
    'systemctl suspend' \
    ''

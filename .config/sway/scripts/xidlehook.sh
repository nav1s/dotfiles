#!/usr/bin/env bash

xidlehook \
  `# Don't lock when there's a fullscreen application` \
  --not-when-fullscreen \
  `# Dim the screen after 10 minutes, undim if user becomes active` \
  --timer 600 \
    'notify-send "Lock sequence initiated"' \
    '' \
  `# Undim & lock after 60 more seconds` \
  --timer 60 \
    'i3lock -c 000000 --keylayout 2' \
    '' \
  `# Finally, suspend an hour after it locks` \
 #  --timer 3600 \
 #    'systemctl suspend' \
 #    ''

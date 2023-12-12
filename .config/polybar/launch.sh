#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
MONITOR=HDMI-A-0 polybar i3 --config=~/.config/polybar/config.ini &

MONITOR=eDP polybar i3 --reload --config=~/.config/polybar/config.ini &


#!/bin/bash

# Check if any power supply claims to be online (AC connected)
if grep -q 1 /sys/class/power_supply/*/online 2>/dev/null; then
  # On AC power: Just run your lock script
  ~/.config/sway/scripts/swaylock-blur.sh
else
  # On Battery power: Suspend the system
  # (Your swaylock script will be triggered automatically by the before-sleep hook)
  systemctl suspend
fi

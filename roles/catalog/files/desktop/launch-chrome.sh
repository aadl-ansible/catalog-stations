#!/bin/bash

# We use incognito mode so things aren't saved by default
# We also set the user directory to /tmp so if anything manages to get saved a reboot will wipe
export DISPLAY=:0.0
xrandr --dpi 96
xinput set-prop 12 "Evdev Axis Calibration" 0 4095 0 4095
xinput set-prop 12 "Evdev Axis Inversion" 1, 0
xinput set-prop 12 "Evdev Axes Swap" 1
google-chrome --incognito --no-first-run --start-maximized --disable-sync --disable-notifications -user-data-dir=/tmp/chrome
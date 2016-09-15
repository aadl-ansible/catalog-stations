#!/bin/bash
export DISPLAY=:0.0
SEARCH="IntelliTouch"

ids=$(xinput --list | awk -v search="$SEARCH" \
    '$0 ~ search {match($0, /id=[0-9]+/);\
                  if (RSTART) \
                    print substr($0, RSTART+3, RLENGTH-3)\
                 }'\
     )

for id in $ids
do
  xrandr --dpi 96
  xinput set-prop $id "Evdev Axis Calibration" 0 4095 0 4095
  xinput set-prop $id "Evdev Axis Inversion" 1, 0
  xinput set-prop $id "Evdev Axes Swap" 1
done
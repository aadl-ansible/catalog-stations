# Turn off display blanking and launch chrome
xset -dpms &
xset s off &
xrandr -o left &
xrandr --dpi 96
xinput set-prop 12 "Evdev Axis Calibration" 0 4095 0 4095
xinput set-prop 12 "Evdev Axis Inversion" 1, 0
xinput set-prop 12 "Evdev Axes Swap" 1
idesk &
launch-chrome &
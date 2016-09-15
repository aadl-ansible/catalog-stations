# Turn off display blanking and launch chrome
xset -dpms &
xset s off &
xrandr -o left &
/usr/bin/calibrate-display
idesk &
fbpanel &
launch-chrome &
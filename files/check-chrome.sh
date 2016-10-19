#!/bin/bash
log_file="/var/log/check-chrome.log"
timestamp() {
    date +"%Y-%m-%d %T"
}
export DISPLAY=:0.0
# If chrome isn't running, launch it
if ! [ -h /tmp/chrome/SingletonLock ]; 
then
    /usr/bin/launch-chrome
    echo $(timestamp) "SingletonLock file not found; attempting to launch Chrome" >> $log_file
elif test `find "/tmp/chrome/SingletonLock" -mmin +7`
  then
# If chrome has been running for more than 7 minutes
# and has been idle between 5-6.5 minutes then reset it
    idle=$(xprintidle)
    if [ $idle -ge 300000 ] && [ $idle -le 360000 ]
    then
      killall chrome
      rm -r /tmp/chrome
      /usr/bin/launch-chrome
      echo $(timestamp) "Chrome running for more than 7 minutes and idle for more than 5. Restarting Chrome"
    fi
else
  echo $(timestamp) "SingletonLock file found" >> $log_file
fi
#!/bin/bash

export DISPLAY=:0.0
# If chrome isn't running, launch it
if ! [ -h /tmp/chrome/SingletonLock ]; 
then
    /usr/bin/launch-chrome
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
		fi
fi
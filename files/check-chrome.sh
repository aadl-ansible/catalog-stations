#!/bin/bash

export DISPLAY=:0.0
# If chrome isn't running, launch it
if ! [ -h /tmp/chrome/SingletonLock ]; 
then
    /usr/bin/chrome-kiosk
fi
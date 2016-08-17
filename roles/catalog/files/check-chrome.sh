#!/bin/bash

if ! [ -h /tmp/chrome/SingletonLock ]; then
    export DISPLAY=:0.0 && /usr/bin/launch-chrome
fi
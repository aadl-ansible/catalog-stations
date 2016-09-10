#!/bin/bash

# We use incognito mode so things aren't saved by default
# We also set the user directory to /tmp so if anything manages to get saved a reboot will wipe
/usr/bin/calibrate-display
google-chrome --incognito --no-first-run --start-maximized --disable-sync --disable-notifications -user-data-dir=/tmp/chrome
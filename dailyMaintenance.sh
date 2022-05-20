#!/bin/sh
osascript -e 'display notification "" with title "Launching daily maintenance script."'
~/bin/onStartup.sh
osascript -e 'display notification "" with title "Daily maintenance script completed."'

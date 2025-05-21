#!/bin/bash

# Get the current hour
HOUR=$(date +%H -d 'TZ="America/Cayenne" now')

# Check if it's between 21 and 23, or 0 and 7
if [ "$HOUR" -le "$1" ] && [ "$HOUR" -gt "$2" ]; then
  # Shut down the system
  /sbin/shutdown --no-wall -h "$1:00" #> /dev/null 2>&1
fi

if [ "$HOUR" -ge "$1" ] || [ "$HOUR" -le "$2" ]; then
  # Shut down the system
  echo entre '22h<'"${HOUR}h"'<7h'  "$(date +%H %X) : $(date)"
  /sbin/shutdown -h now
fi

#!/bin/bash
DEBUG=0

CPUTEMP=$(sensors | grep -Eo 'Package id 0:.{0,10}' | grep -Eo '[1-9].{0,1}' | sed 's/$/°C/')

echo "<txt>$CPUTEMP </txt><txtclick>st -e btop</txtclick>
<tool>"

exit 0
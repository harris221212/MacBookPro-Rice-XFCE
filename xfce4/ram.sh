#!/bin/bash
DEBUG=0

MEMUSAGE2=$(free -m | awk '/^Mem/ {print $3}')
THOUSAND=$(echo 1000)
MEMUSAGE=$(echo "scale=1; $MEMUSAGE2/$THOUSAND" | bc)

echo "<txt>$MEMUSAGE GB </txt><txtclick>st -e htop</txtclick>
<tool>"

exit 0
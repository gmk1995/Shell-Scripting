#Monitoring the Number of TCP Connections
#The presented bash script calculates the number of TCP connections on the current machine and prints that on the screen along with date and time related information.

#!/bin/bash

C=$(/bin/netstat -nt | tail -n +3 | grep ESTABLISHED | wc -l)
D=$(date +"%m %d")
T=$(date +"%H %M")
printf "%s %s %s\n" "$C" "$D" "$T"
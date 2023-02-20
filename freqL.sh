#Calculating Letter Frequencies

#The following bash script will calculate the number of times each letter appears on a file.

#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 filename."
    exit 1
fi

filename=$1

while read -n 1 c
do
    echo "$c"
done < "$filename" | grep '[[:alpha:]]' | sort | uniq -c | sort -nr
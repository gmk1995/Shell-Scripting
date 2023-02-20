#Converting tabs to spaces

#The presented utility, which is named t2s.sh, will read a text file and convert each tab to the specified number of space characters. Notice that the presented script replaces each tab character with 4 spaces but you can change that value in the code or even get it as command line argument.

#!/bin/bash

for f in "$@"
do
    if [ ! -f $f ]
    then
      echo $f does not exist!
      continue
    fi
    echo "Converting $f.";
    newFile=$(expand -t 4 "$f");
    echo "$newFile" > "$f";
done
#Timing Out read Operations

#The read builtin command supports the -t timeout option that allows you to time out a read operation after a given time, which can be very convenient when you are expecting user input that takes too long. The technique is illustrated in timeOut.sh.

#!/bin/bash

if [[ $# -le 0 ]]
then
    printf "Not enough arguments!\n"
    exit
fi

TIMEOUT=$1
VARIABLE=0

while :
do
  ((VARIABLE = VARIABLE + 1))
  read -t $TIMEOUT -p "Do you want to Quit(Y/N): "
  if [ $VARIABLE -gt $TIMEOUT ]; then
    echo "Timing out - user response took too long!"
    break
  fi

  case $REPLY in
  [yY]*)
    echo "Quitting!"
    break
    ;;
  [nN]*)
    echo "Do not quit!"
    ;;
  *) echo "Please choose Y or N!"
     ;;
  esac
done
#This Shell Script is Using For Practising The Switch Cases

#! /bin/bash

case $1 in 

start)
echo " Service Started Successfully "
;;
stop)
echo " Service Stopped Successfully "
;;
restart)
echo " Service restarted Successfully "
;;
console)
echo " Service are Consoled Succwessfully "
;;
*)
echo "Invalid Option Entered"
echo " Usage: Enter a start|stop|restart|console "
;;
esac
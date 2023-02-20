#This Shell Scripting is for Practing the Nested IF Condition

#! /bin/bash

a=10
b=20
c=30

if [[ ( $a -gt $b && $a -gt $c ) ]]
then
echo " $a is greaterthan $b and $c"
elif [[ ( $b -gt $a && $b -gt $c ) ]]
then
echo " $b is greaterthan $a and $b "
else
echo " $c is greaterthan $a and $b "
fi

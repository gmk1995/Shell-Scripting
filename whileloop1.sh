#This Shell Script is Used to Print Numbers In Incremental Order Using While Loop

#! /bin/bash

echo " While Loop is Starting ... "

i=1
while [ $i -le 10 ]
do
echo $i
i=`expr $i + 1`
done

echo " While Loop is Ending ... "
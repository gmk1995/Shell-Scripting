#This Shell Script is Used to Print Numbers In Decremental Order Using While Loop

#! /bin/bash

echo "While Loop Is Starting ..."
i=10
while [ $i -ge 1 ]
do 
echo $i
i=`expr $i - 1`
done
echo "While Loop is Ending ..."

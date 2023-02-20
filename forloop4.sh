#This Shell Accept the Number from user and print the OutPut

#! /bin/bash

echo " Enter The Number You Want to Print "
read numb1 numb2
for  (( i=$numb1; i<=$numb2; i++ ))
do 
echo " You have Entered $numb1 and $numb2, For that Below Values are Displaying"
echo $i
done
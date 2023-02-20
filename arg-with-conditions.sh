#This is a Shell Script requried minmum two Arguments pass at command line to execute it otherwise it will throw error message

#! /bin/bash

if [[ $# -eq 2 ]]

then

echo $0 #This will Print the Script File name

echo $1 #This will Print the 1st Argument

echo $2 #This will Print the 2st Argument

echo ${10} #This will Print the 10th Argument

echo "$#" #This will Print the Number of Argument used in command line

echo "$$" #This will Print the Process id (pid) of the script

echo "$@" #This will print all the arguments as one line
 
echo "$*" #This will print the each arguments as one string

cal

echo "$?" #This will Print the previous command execution status

else

echo "Please Pass Two Arguments"
echo "Usage: sh $0 arg1 arg2"

fi
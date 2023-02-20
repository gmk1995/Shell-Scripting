#This is a Shell Script to Practice the Arguments

#! /bin/bash

#This will Print the Script File name
echo $0
#This will Print the 1st Argument
echo $1
#This will Print the 2st Argument
echo $2
#This will Print the 10th Argument
echo ${10}
#This will Print the Number of Argument used in command line
echo "$#"
#This will Print the Process id (pid) of the script
echo "$$"
#This will print all the arguments as one line
echo "$@"
#This will print the each arguments as one string
echo "$*"
cal
#This will Print the previous command execution status
echo "$?"
#This Shell Script is used for Practising the Read Command with "-p" option. It is help to print the line and ask the input on the sameline. Here we are using "-s" option inorder to not display the Password when we are typing

#! /bin/bash

read -p " Please Enter Your UserName:" username
read -sp " Please Enter Your Password:" password

echo "The UserName You have Entered is:" $username
echo "The Password You have Entered is:" $password
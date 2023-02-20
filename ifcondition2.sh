#This Shell Script is for Practing the if condition by using Read command and Arthimetic Operations

#! /bin/bash

echo " Enter the Number To Do The Arthimetic Operation"
read numb1 numb2 numb3 numb4

echo " The Sum of the $numb1 and $numb2 is: " `expr $numb1 + $numb2`
echo " The Subtraction of the $numb2 and $numb3 is: " `expr $numb2 - $numb3`
echo " The Multiplication of the $numb3 and $numb4 is: " `expr $numb3 \* $numb4`
echo " The Divison of the $numb4 and $numb2 is: " `expr $numb4 / $numb2`
echo " The Modular Operation of $numb4 and $numb3 is: " `expr $numb4 % $numb3`

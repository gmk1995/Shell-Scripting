#This Script is using to perform the arithmetric  using Arguments

#! /bin/bash

echo "Addtion of 3 + 2 is :" `expr $1 + $2`

echo "Subtraction of 3 - 2 is :"  `expr $1 - $2`
echo "Division of 10 by 2 is :"  `expr $3 / $2`
echo "Multiplication of 3 \* 2 is :" `expr $1 \* $2`
echo "Modular Operation  of 20 % 3 is :" `expr $4 % $1`
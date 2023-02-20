#! /bin/bash

function f1 
{
    echo "Hello From the $FUNCNAME!"
    VAR="This is a Function ONE Variable"
}

f2 ()
{
    a=$1
    b=$2
    sum=$((${a} + ${b}))
    echo "${sum}"
}

f1
echo ${VAR}

mySum="$(f2 6 7)"
echo mySum = $mySum

mySum="$(f2 50 -2)"
echo mySum = $mySum
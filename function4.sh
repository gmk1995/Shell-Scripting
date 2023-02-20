#! /bin/bash

a=2
b=3
c=4

f1 () 
{
    echo "The Sum of the $a and $b:" `expr $a + $b`
}

f1 $a $b $c

f2 () 
{
    echo "The Sum of the function f1 and $3:" `expr $a + $c + $b`

    f1
}

f2 $a $b $c
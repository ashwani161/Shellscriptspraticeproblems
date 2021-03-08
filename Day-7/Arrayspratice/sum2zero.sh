#!/bin/bash -x
echo -n "Enter three numbers:"
read a
read b
read c
x=$((a+b+c)) 
if [ $x -eq 0 ]
then
    echo "Sum of $a, $b and $c is zero"
else
    echo "Sum of $a, $b and $c is not zero"
fi

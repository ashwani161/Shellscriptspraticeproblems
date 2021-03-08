#!/bin/bash -x
count=0
for i in {1..100}
do
    # Get units digit
    r=$(( $i % 10 ))

    # Get tens digit
    rev=$(( $i / 10 ))
    if [ $r -eq $rev ];
    then
        echo "Units and Tens digit of $i is same"
        arr[count]=$i
        count=$count+1
    fi

done

echo "Array is "${arr[@]}

#!/bin/bash -x
a=$((RANDOM%364 + 100))
b=$((RANDOM%489 + 100))
c=$((RANDOM%590 + 100))
d=$((RANDOM%621 + 100))
e=$((RANDOM%934 + 100))
f=$((RANDOM%636 + 100))
g=$((RANDOM%222 + 100))
h=$((RANDOM%876 + 100))
i=$((RANDOM%924 + 100))
j=$((RANDOM%745 + 100))

arr=($a $b $c $d $e $f $g $h $i $j)
if [ "${#arr[@]}" -lt 2 ]
then
     echo "incoming array is not large enough >&2"
     exit 1
fi

Largest=${arr[0]}
Smallest=${arr[0]}
secondLargest='unset'
secondSmallest='unset'

for((i=1; i < ${#arr[@]}; i++))
do
     if [[ ${arr[i]} > $Largest ]];
       then
             secondLargest=$Largest;
             Largest=${arr[i]}
     elif (( ${arr[i]} !=$Largest )) &&
     { [[ "$secondLargest" = "unset" ]] || [[ ${arr[i]} > $secondLargest ]]; }
       then
             secondLargest=${arr[i]}
     fi
done

for((j=1; j < ${#arr[@]}; j++))
do
     if [[ ${arr[j]} < $Smallest ]];
       then
             secondSmallest=$Smallest;
             Smallest=${arr[j]}
     elif (( ${arr[j]} !=$Smallest )) &&
     { [[ "$secondSmallest" = "unset" ]] || [[ ${arr[j]} < $secondSmallest ]]; }
       then
             secondSmallest=${arr[j]}
     fi
done
echo "$secondLargest";
echo "$secondSmallest";

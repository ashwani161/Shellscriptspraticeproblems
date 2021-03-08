#!/bin/bash -x
declare -A dies
for i in {1..50}
do
   x=$(( ( RANDOM%6 ) + 1 ))
   if [[ -n $((dies[${x}])) ]];
     then
         dies[${x}]=$((dies[${x}] + 1))
    else
         dies[${x}]=1
   fi
echo "${x} count is ${dies[${x}]}"
   if [[ dies[${x}] -eq 10 ]]
       then
          echo "found ${x} is repeated 10 times"
          break
   fi
done

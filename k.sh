#!/bin/bash
nums="1 2 3 4 5"

for num in $nums
do
    q=`expr $num % 2`
    if [ $q -eq 0 ]
    then
        echo 1
        continue
    fi
    echo 2
done

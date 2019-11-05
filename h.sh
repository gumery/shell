#!/bin/bash
counter=0
while [ $counter -lt 5 ]
do
    echo $counter
    counter=`expr $counter + 1`
done

#!/bin/bash
a=10
b=20

if [ $a == $b ]
then
    echo "1 a is equal b"
else
    echo "1 a is not equal b"
fi

if test $a != $b
then
    echo '2 a is not equal b'
else
    echo '2 a is equal b'
fi

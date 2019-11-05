#!/bin/bash

echo -e "Please input a number between 1 to 4"

echo -e "Your number is:\c"

read num

case $num in 
    1) echo "Your choice is 1"
    ;;
    2) echo "Your choice is 2"
    ;;
    3) echo "Your choice is 3"
    ;;
    4) echo "Your choice is 4"
    ;;
    *) echo "error"
esac

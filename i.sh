#!/bin/bash

echo 'type <CTRL-D> to terminate'
echo -n 'enter your most like film:'
while read FILM
do
    echo "It is ${FILM}"
done

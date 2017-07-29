#!/bin/bash

curr=$(cat "/home/josh/scripts/currWall" )
curr=$(( $curr - 1 ))

findF () {
    if [[ ! -f /home/josh/Wallpapers/a$curr.jpg ]]
    then
        curr=$(( $curr - 1 ))
        findF
    fi
}

if [ $curr -lt 0 ]
then
    curr=100
    findF
fi

echo $curr > "/home/josh/scripts/currWall"

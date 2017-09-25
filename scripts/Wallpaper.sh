#!/bin/bash

curr=$(cat "/home/josh/scripts/currWall" )
curr=$(( $curr $1 ))

findF () {
    if [[ ! -f /home/josh/Wallpapers/$curr.jpg ]]
    then
        curr=$(( $curr - 1 ))
        findF
    fi
}

if [ $curr -lt 0 ]
then
    curr=$(find /home/josh/Wallpapers/. -name '*.jpg' | sort -V | tail -1 | sed -e "s/[^0-9]//g")
    findF
fi

if [[ ! -f /home/josh/Wallpapers/$curr.jpg ]]
then
    curr=0
fi

echo $curr > "/home/josh/scripts/currWall"

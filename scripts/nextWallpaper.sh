#!/bin/bash

curr=$(cat "/home/josh/scripts/currWall" )
curr=$(( $curr + 1 ))

if [[ ! -f /home/josh/Wallpapers/a$curr.jpg ]]
then
    curr=0
fi

echo $curr > "/home/josh/scripts/currWall"

echo /home/josh/Wallpapers/a$curr.jpg

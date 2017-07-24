#!/bin/bash

curr=$(cat "/home/josh/scripts/currWall" )
curr=$(( (curr + 1) % 10))

echo $curr > "/home/josh/scripts/currWall"

echo ~/Wallpapers/a$curr.jpg

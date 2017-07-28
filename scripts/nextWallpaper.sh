#!/bin/bash

curr=$(cat "~/scripts/currWall" )
curr=$(( (curr + 1) % 10))

echo $curr > "~/scripts/currWall"

echo ~/Wallpapers/a$curr.jpg

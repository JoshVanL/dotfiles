#!/bin/bash

now="$(date +'%T_%d-%m-%Y')"
gnome-screenshot -f ~/Pictures/screenshot_${now}.png
twmnc -c 'Screenshot' -i ~/.config/twmn/pic.png

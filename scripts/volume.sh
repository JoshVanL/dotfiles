#!/bin/bash

amixer -M set Master "$1%$2"

sinks=$(pactl list short sinks)

if [[ $(echo "$sinks" | wc -l)  -eq  2 ]]
then
    sink=$(echo "$sinks" | sed -n '2p' | cut -c1-1)
    pactl set-sink-volume $sink "$2$1%"
fi

pkill -RTMIN+1 i3blocks

#!/bin/bash

CURRENT_STATE=`amixer get Master | egrep 'Playback.*?\[o' | egrep -o '\[o.+\]'`

if [[ $CURRENT_STATE == '[on]' ]]; then
    amixer set Master mute
else
    amixer set Master unmute
    amixer set Headphone unmute
    amixer sset 'Headphone Mic Boost' 20%
    amixer set Speaker unmute
fi

pkill -RTMIN+1 i3blocks

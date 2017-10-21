#!/bin/bash

if [[ $(nmcli radio wifi) == "enabled" ]];
then
    twmnc -d 3000 -c "--  off --"
    nmcli radio wifi off
else
    twmnc -d 3000 -c "--  on --"
    nmcli radio wifi on
fi


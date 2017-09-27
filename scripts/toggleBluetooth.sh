#!/bin/bash

service=bluetooth.service

if [[ $(systemctl is-active $service) == "active" ]]
then
    systemctl stop bluetooth.service
    rfkill block 0
else
    rfkill unblock 0
    systemctl start bluetooth.service
fi

pkill -RTMIN+1 i3blocks

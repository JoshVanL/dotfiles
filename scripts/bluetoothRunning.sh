#!/bin/bash

RUN="$(systemctl status bluetooth.service | grep running)"

if [[ $RUN = "" ]]
then
    exit 0
fi

echo 
exit

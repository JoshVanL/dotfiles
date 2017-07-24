#!/bin/bash

sleep 10 && conky &
sleep 15 && killall -HUP conky

exit

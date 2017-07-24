#!/bin/sh

sleep 7
skippy-xd --start-daemon --config ~/.config/skippy/skippy-xd.rc
while true
do
    echo [re]start
    killall skippy-xd
    rm /tmp/skippy-xd-fifo
    /usr/bin/skippy-xd --start-daemon --config ~/.config/skippy/skippy-xd.rc
    echo "Died"
    echo
done

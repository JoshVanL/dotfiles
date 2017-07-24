#!/bin/bash

aplay ~/Sounds/click.wav; exec termite -e "alsamixer -c 0"

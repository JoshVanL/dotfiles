#!/bin/bash

xmodmap -e 'keycode 0x42=Escape'

xmodmap -e 'clear Lock'

xset r rate 150 50

xset m 4/1 0

twmnc -c 'Keyboard Set' -i ~/.config/twmn/keyboard.png

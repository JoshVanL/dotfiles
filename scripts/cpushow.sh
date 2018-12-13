notify-send -u low "cpu
---
$(ps axch -o %cpu,cmd:15 --sort=-%cpu | head | awk '{ print $1 "   " $2}')"

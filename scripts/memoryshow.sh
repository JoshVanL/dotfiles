notify-send -u low "memory
---
$(ps axch -o %mem,cmd:30 --sort=-%mem | head | awk '{print $1 "  " $2 }' )"

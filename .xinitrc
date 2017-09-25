xmodmap -e 'clear Lock'
xmodmap -e 'keycode 0x42=Escape'

xset r rate 150 50
xset m 4/1 0

xrdb ~/.Xresources

xinput set-prop "DLL075B:01 06CB:76AF Touchpad" "libinput Natural Scrolling Enabled" 1
xinput set-prop "DLL075B:01 06CB:76AF Touchpad" "libinput Tapping Enabled" 1

exec i3

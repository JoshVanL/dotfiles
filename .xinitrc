xmodmap -e 'clear Lock'
xmodmap -e 'keycode 0x42=Escape'

xset r rate 150 50
xset m 4/1 0

xrdb ~/.Xresources

exec i3

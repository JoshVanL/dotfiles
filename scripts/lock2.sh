#!/bin/sh

curr=$(cat ~/scripts/currWall)

#convert $curr -blur 0x5 -scale 3200x1800 ~/Wallpapers/blur.png
#convert $curr -blur 0x10 -scale 200% ~/Wallpapers/blur.png

B='#00000000'  # blank
C='#00000000'  # clear ish
D='#aaaaae00'  # default
#T='#888888FF'  # text
T='#888888FF'  # text
W='#66666666'  # wrong
V='#ffd1dcDD'  # verifying

#--image=/home/josh/Wallpapers/blur$curr.png \
i3lock              \
--insidevercolor=$C   \
--ringvercolor=$C     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$C   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--textcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
--screen 0            \
--blur 10              \
--clock               \
--indicator           \
--timefont=DejaVu Sans   \
--datefont=DejaVu Sans   \
--timestr="%H:%M:%S"  \
--datestr="%A, %m %Y" \
--veriftext=". . ."   \
--wrongtext="bad pass" \
--timesize 60            \
--datesize 32           \
# --modsize=10
# etc

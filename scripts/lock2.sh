#!/bin/sh

B='#00000000'  # blank
C='#00000000'  # clear ish
D='#aaaaae00'  # default
T='#DDDDDDDD'  # text
W='#66666666'  # wrong
V='#DDDDDDDD'  # verifying

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
--blur 5              \
--clock               \
--indicator           \
--timestr="%H:%M:%S"  \
--datestr="%A, %m %Y" \
--veriftext=". . ."   \
--wrongtext="bad pass"
#--textsize=15
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc

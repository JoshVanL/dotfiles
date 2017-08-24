#!/bin/sh

B='#00000000'  # blank
C='#00000000'  # clear ish
D='#aaaaae00'  # default
#T='#888888FF'  # text
T='#ffd1dcFF'  # text
W='#66666666'  # wrong
V='#ffd1dcDD'  # verifying

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
--timefont=unifont    \
--datefont=unifont    \
--timestr="%H:%M:%S"  \
--datestr="%A, %m %Y" \
--veriftext=". . ."   \
--wrongtext="bad pass" \
--timesize 32           \
--datesize 17           \
# --modsize=10
# etc

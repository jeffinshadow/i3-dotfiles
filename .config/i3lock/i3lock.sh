#!/bin/bash
# Lockscreen made by https://github.com/jeffinshadow

# Setting image sources
ICON=$HOME/.config/i3lock/locklogo.png
TMPBG=/tmp/screen.png
FILTER=$HOME/.config/i3lock/filter.png

# Taking a screenshot to use as background
scrot -o /tmp/screen.png

# Appling filters and positioning image
convert $TMPBG -scale 10% -scale 1000% $TMPBG
convert $TMPBG $FILTER -composite $TMPBG
convert $TMPBG $ICON -gravity center -composite -matte $TMPBG

# Starting i3lock
i3lock -ui $TMPBG

exit 0
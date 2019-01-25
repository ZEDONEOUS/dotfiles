#!/bin/bash
TMPBG=/tmp/screen.png

scrot /tmp/screen.png
convert $TMPBG -scale 10% -scale 1000% -fill black -colorize 35% $TMPBG
i3lock -u -i $TMPBG

#!/bin/bash

intern="LVDS1"
extern="HDMI1"

intern_size=$(xrandr --verbose | grep preferred | head -1 | cut -d' ' -f3)
extern_size=$(xrandr --verbose | grep preferred | tail -1 | cut -d' ' -f3)
x_offset=$(echo $extern_size | cut -d'x' -f1)

selection=""

if xrandr | grep "$extern disconnected"; then
    selection=$(printf $intern | rofi -dmenu -p "Monitores " -lines 5 -opacity "80")
else
    selection=$(
        printf "$intern\n$intern + $extern" | 
        rofi -dmenu -p "Monitores " -lines 5 -opacity "80"
    )
fi

if [ "$selection" != "" ]; then
    if echo $selection | grep "+"; then
        xrandr --output "$extern" --mode "$extern_size" --pos 0x0 --output "$intern" --primary --mode "$intern_size" --pos "${x_offset}x0"
    else
        xrandr --output "$intern" --auto --output "$extern" --off
    fi

    i3-msg restart 
fi


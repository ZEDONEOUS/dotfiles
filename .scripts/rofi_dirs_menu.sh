#!/bin/bash

main_path=~/

selected=$(ls $main_path -t | tee | head -5 | rofi -dmenu -p "Directorios " -lines 5 -opacity "80")

if [ ! -z $selected ]
then
    thunar "$main_path$selected"
fi

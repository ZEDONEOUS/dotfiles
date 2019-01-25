#!/bin/bash

rofi_command="rofi -lines 5"

# Each of the icon is a selectable element
options=$'SUSPENDER\nAPAGAR\nREINICIAR\nCERRAR SESION'

chosen="$(echo "$options" | $rofi_command -opacity "80" -p "SISTEMA " -dmenu)"
case $chosen in
    "SUSPENDER") # Suspend
        amixer set Master mute
        betterlockscreen -s
        ;;
    "APAGAR") # Shutdown the computer
        systemctl poweroff
        ;;
    "REINICIAR") # Reboot the computer
        systemctl reboot
        ;;
    "CERRAR SESION") # Log out of the current session
        i3-msg exit
        ;;
esac


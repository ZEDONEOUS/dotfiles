#!/bin/bash

web_pages="mail.google.com \nweb.whatsapp.com \ngithub.com \nunsplash.com \npelispedia.tv \ncrunchyroll.com"
selection=$(printf "$web_pages" | rofi -dmenu -p "Paginas Web " -lines 5 -opacity "80")

if [ "$selection" != "" ] 
then
    firefox $selection
fi

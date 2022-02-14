#!/bin/sh

# set wallpaper with feh
feh --bg-fill ~/.dwm/wallpaper.jpg

# killall if running
killall sxhkd dwmbarscripts autostartdwmbar dunst mpd 

# start compositor
picom --config ~/.dwm/picom.conf &

# start sxhkd
sxhkd &

# start dwmbar config
autostartdwmbar &

# start dunst notification daemon
dunst -config ~/.dwm/dunstrc &

# start music daemon
mpd


#!/bin/sh

# set wallpaper with feh
feh --bg-fill ~/.dwm/wallpaper.jpg

# killall if running
killall sxhkd dwmbarscripts autostartdwmbar dunst mpd 

# start compositor
picom &

# start sxhkd
sxhkd &

# start dwmbar config
autostartdwmbar &

# start dunst notification daemon
dunst &

# start music daemon
mpd


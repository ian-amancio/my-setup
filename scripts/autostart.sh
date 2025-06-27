#!/usr/bin/env bash

picom --config ~/projects/my-setup/config/picom.conf &
redshift -P -O 4500 &
blueman-applet &
xrandr --output HDMI-1 --auto --right-of eDP-1 &
feh --bg-fill ~/me/wallpaper/pexels-1.jpg

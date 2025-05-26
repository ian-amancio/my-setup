#!/usr/bin/env bash

picom --config ~/projects/my-setup/picom.conf &
redshift -P -O 4500 &
#nm-applet &
blueman-applet &
xrandr --output HDMI-1 --auto --right-of eDP-1 &
feh --bg-scale ~/me/wallpaper/chess.jpg

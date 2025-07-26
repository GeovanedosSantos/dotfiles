#!/usr/bin/env bash

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
dunst &
xset b off &
picom --config /home/geovane/.config/picom/picom.conf & 
feh --bg-scale ~/Imagens/wallpaper2.jpg &
xss-lock --transfer-sleep-lock -- i3lock -f -e --nofork &
nm-applet &
xsettingsd &

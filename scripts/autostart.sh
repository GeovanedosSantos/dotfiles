#!/usr/bin/env bash

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
mako &
nm-applet &
exec dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots &

exec swayidle -w \
	timeout 300 'swaylock -e -f -c 00000' \
	before-sleep 'swaylock -e -f -c 00000' 

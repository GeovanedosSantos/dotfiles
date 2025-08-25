#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

run nm-applet
run picom --config ~/.config/picom/picom.conf
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run xss-lock --transfer-sleep-lock -- i3lock -f -e --nofork
run xsettingsd
run xset b off

#!/usr/bin/env bash
lock="i3lock -f -e"
function powermenu {
    option="Desligar\nReiniciar\nSuspender\nBloquear"
    selected=$(echo -e $option | dmenu -i ) || exit 0
    if [[ $selected = "Desligar" ]]; then
        systemctl poweroff
    elif [[ $selected = "Reiniciar" ]]; then
        systemctl reboot
    elif [[ $selected = "Suspender" ]]; then
        systemctl suspend
    elif [[ $selected = "Bloquear" ]]; then
        $lock
    fi
}

powermenu

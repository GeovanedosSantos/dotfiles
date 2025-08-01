#!/usr/bin/env bash
lock="swaylock -f -e"
function powermenu {
    option="Desligar\nReiniciar\nSuspender\nBloquear"
    selected=$(echo -e $option | fuzzel --dmenu -l 4) || exit 0
    if [[ $selected = "Desligar" ]]; then
        poweroff
    elif [[ $selected = "Reiniciar" ]]; then
        reboot
    elif [[ $selected = "Suspender" ]]; then
        systemctl suspend
    elif [[ $selected = "Bloquear" ]]; then
        $lock
    fi
}

powermenu

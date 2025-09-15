#!/usr/bin/env bash
function powermenu {
    option="Desligar\nReiniciar\nSuspender\nBloquear"
    selected=$(echo -e $option | fuzzel --dmenu -i -l  4) || exit 0
    if [[ $selected = "Desligar" ]]; then
        poweroff
    elif [[ $selected = "Reiniciar" ]]; then
        reboot
    elif [[ $selected = "Suspender" ]]; then
        systemctl suspend
    elif [[ $selected = "Bloquear" ]]; then
        swaylock -f -e 
    fi
}

powermenu

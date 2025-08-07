#!/usr/bin/env bash
function powermenu {
    option="Desligar\nReiniciar\nSuspender"
    selected=$(echo -e $option | fuzzel --dmenu -l 3) || exit 0
    if [[ $selected = "Desligar" ]]; then
        poweroff
    elif [[ $selected = "Reiniciar" ]]; then
        reboot
    elif [[ $selected = "Suspender" ]]; then
        systemctl suspend
    fi
}

powermenu

#!/usr/bin/env bash
function powermenu {
    option="Desligar\nReiniciar\nSuspender\nBloquear"
    selected=$(echo -e $option | rofi -i -dmenu -l  4) || exit 0
    if [[ $selected = "Desligar" ]]; then
        poweroff
    elif [[ $selected = "Reiniciar" ]]; then
        reboot
    elif [[ $selected = "Suspender" ]]; then
        systemctl suspend
    elif [[ $selected = "Bloquear" ]]; then
        i3lock -f -e 
    fi
}

powermenu

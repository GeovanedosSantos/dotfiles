#!/usr/bin/env bash

function powermenu {
    option="Desligar\nReiniciar\nSuspender\nBloquear"
    selected=$(echo -e $option | wmenu -i -l 4)
    if [[ $selected = "Desligar" ]]; then
        poweroff
    elif [[ $selected = "Reiniciar" ]]; then
        reboot
    elif [[ $selected = "Suspender" ]]; then
        systemctl suspend
    elif [[ $selected = "Bloquear" ]]; then
        swaylock -f -e -c 00000
    fi
}

powermenu

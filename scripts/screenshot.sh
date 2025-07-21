#!/usr/bin/env bash

function screenshot {
    option="Área (Clipboard)\nTela Inteira (Clipboard)\nÁrea (Salvar)"
    selected=$(echo -e $option | wmenu -i -l 3)
    if [[ $selected = "Área (Clipboard)" ]]; then
         grim -g "$(slurp)" - | wl-copy
    elif [[ $selected = "Tela Inteira (Clipboard)" ]]; then
         grim - | wl-copy
    elif [[ $selected = "Área (Salvar)" ]]; then
        grim -g "$(slurp)"
    fi
}

screenshot

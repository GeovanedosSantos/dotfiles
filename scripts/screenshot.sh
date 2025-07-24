#!/usr/bin/env bash

output='/home/geovane/Imagens/screenshots/%d-%m-%y-%T-screenshot.png'
function screenshot {
    option="Área (Clipboard)\nJanela (Clipboard)\nÁrea (Salvar)\nTela Inteira (Clipboard)"
    selected=$(echo -e $option | dmenu -i) || exit 0
    if [[ $selected = "Área (Clipboard)" ]]; then
         scrot --select --line mode=edge -e 'xclip -selection clipboard -t image/png -i $f && rm $f' 
    elif [[ $selected = "Janela (Clipboard)" ]]; then
         scrot --focused  -e 'xclip -selection clipboard -t image/png -i $f && rm $f'
    elif [[ $selected = "Área (Salvar)" ]]; then
         scrot "$output" --select --line mode=edge
    elif [[ $selected = "Tela Inteira (Clipboard)" ]]; then
         scrot -e 'xclip -selection clipboard -t image/png -i $f && rm $f'
fi
}

screenshot

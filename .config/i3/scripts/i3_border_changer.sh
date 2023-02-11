#! /bin/bash

middle_blue_green="#8bd5ca"
middle_blue_green_companion="#8ed5fa"
slate_blue="#7b58dc"
slate_blue_companion="#9b58dc"
ruddy_pink="#ed8796"
ruddy_pink_companion="#ed87d6"
lavender_blue="#cad3f5"
lavender_blue_companion="#cad3d5"
deep_champagne="#eed49f"
deep_champagne_companion="#eed4df"

chosen=$(printf "\
Middle Blue Green
Slate Blue
Ruddy Pink
Lavender Blue
Deep Champagne\
" | rofi -dmenu -i -theme ~/.config/rofi/nord_oneline.rasi)

function change_border {
    sed -Ei "/^client.focused/s/^.*$/client.focused           "$1" "$1" #24273a "$2"   "$1"/" ~/.config/i3/config
    i3-msg restart
}

case "$chosen" in
    "Middle Blue Green") change_border "$middle_blue_green" "$middle_blue_green_companion" ;;
    "Slate Blue") change_border "$slate_blue" "$slate_blue_companion" ;;
    "Ruddy Pink") change_border "$ruddy_pink" "$ruddy_pink_companion" ;;
    "Lavender Blue") change_border "$lavender_blue" "$lavender_blue_companion" ;;
    "Deep Champagne") change_border "$deep_champagne" "$deep_champagne_companion" ;;
esac

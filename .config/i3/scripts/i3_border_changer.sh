#!/bin/bash

light="#ffffff"
dark="#24273a"
blue_jeans="#61afef"
blue_jeans_companion="#61dfff"
pale_violet="#c6a0f6"
pale_violet_compaion="#c640f6"
middle_blue_green="#8bd5ca"
middle_blue_green_companion="#8ed5fa"
ruddy_pink="#ed8796"
ruddy_pink_companion="#ed87d6"
lavender_blue="#cad3f5"
lavender_blue_companion="#cad3c5"
deep_champagne="#eed49f"
deep_champagne_companion="#eed4df"
light_salmon="#f5a97f"
light_salmon_companion="#f5a9bf"
slate_blue="#7b58dc"
slate_blue_companion="#9b58dc"

chosen=$(printf "\
Blue Jeans
Pale Violet
Middle Blue Green
Ruddy Pink
Lavender Blue
Deep Champagne
Light Salmon
Slate Blue\
" | rofi -dmenu -i -theme ~/.config/rofi/border_color_chooser.rasi -p "choose a color: ")

function change_border {
    sed -Ei "/^client.focused/s/^.*$/client.focused           "$1" "$1" "$3" "$2"   "$1"/" ~/.config/i3/config
    i3-msg restart
}

case "$chosen" in
    "Blue Jeans") change_border "$blue_jeans" "$blue_jeans_companion" "$dark" ;;
    "Pale Violet") change_border "$pale_violet" "$pale_violet_compaion" "$dark" ;;
    "Middle Blue Green") change_border "$middle_blue_green" "$middle_blue_green_companion" "$dark" ;;
    "Ruddy Pink") change_border "$ruddy_pink" "$ruddy_pink_companion" "$dark" ;;
    "Lavender Blue") change_border "$lavender_blue" "$lavender_blue_companion" "$dark" ;;
    "Deep Champagne") change_border "$deep_champagne" "$deep_champagne_companion" "$dark" ;;
    "Light Salmon") change_border "$light_salmon" "$light_salmon_companion" "$dark" ;;
    "Slate Blue") change_border "$slate_blue" "$slate_blue_companion" "$light" ;;
esac

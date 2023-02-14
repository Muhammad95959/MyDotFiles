#! /bin/bash

middle_blue_green="#8bd5ca"
middle_blue_green_companion="#8ed5fa"
slate_blue="#7b58dc"
slate_blue_companion="#9b58dc"
ruddy_pink="#ed8796"
ruddy_pink_companion="#ed87d6"
lavender_blue="#cad3f5"
lavender_blue_companion="#cad3c5"
deep_champagne="#eed49f"
deep_champagne_companion="#eed4df"
light_salmon="#f5a97f"
light_salmon_companion="#f5a9bf"
blue_jeans="#61afef"
blue_jeans_companion="#61dfff"

chosen=$(printf "\
Middle Blue Green
Slate Blue
Ruddy Pink
Lavender Blue
Deep Champagne
Light Salmon
Blue Jeans\
" | rofi -dmenu -i -theme ~/.config/rofi/border_color_chooser.rasi -p "choose a color: ")

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
    "Light Salmon") change_border "$light_salmon" "$light_salmon_companion" ;;
    "Blue Jeans") change_border "$blue_jeans" "$blue_jeans_companion" ;;
esac

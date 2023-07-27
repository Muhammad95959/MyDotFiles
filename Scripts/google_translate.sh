#!/bin/bash

en_to_ar="https://translate.google.com.eg/?hl=ar&tab=rT1&sl=en&tl=ar&op=translate"
ar_to_en="https://translate.google.com.eg/?hl=ar&tab=rT1&sl=ar&tl=en&op=translate"

choice=$(printf "Translate English\nTranslate Arabic" | rofi -dmenu \
    -p "Choice : " \
    -theme ~/.config/rofi/nord_oneline.rasi
)

if [ -z "$choice" ]; then
    exit 1
fi

text=$(rofi -dmenu \
    -p "Type here : " \
    -theme ~/.config/rofi/nord_oneline.rasi
)

if [ -z "$text" ]; then
    exit 2
fi

case $choice in
    "Translate English") xdg-open "$en_to_ar&text=$text" ;;
    "Translate Arabic") xdg-open "$ar_to_en&text=$text" ;;
esac

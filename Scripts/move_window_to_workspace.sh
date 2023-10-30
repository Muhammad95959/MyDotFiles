#!/bin/bash

chosen=$(printf "\
1
2
3
4
5
6
7
8
9
10\
" | rofi -dmenu -i -theme ~/.config/rofi/oneliner.rasi -p "move to workspace:")

case "$chosen" in
    "1")  i3-msg move container to workspace number 1  ; i3-msg workspace number 1  ;;
    "2")  i3-msg move container to workspace number 2  ; i3-msg workspace number 2  ;;
    "3")  i3-msg move container to workspace number 3  ; i3-msg workspace number 3  ;;
    "4")  i3-msg move container to workspace number 4  ; i3-msg workspace number 4  ;;
    "5")  i3-msg move container to workspace number 5  ; i3-msg workspace number 5  ;;
    "6")  i3-msg move container to workspace number 6  ; i3-msg workspace number 6  ;;
    "7")  i3-msg move container to workspace number 7  ; i3-msg workspace number 7  ;;
    "8")  i3-msg move container to workspace number 8  ; i3-msg workspace number 8  ;;
    "9")  i3-msg move container to workspace number 9  ; i3-msg workspace number 9  ;;
    "10") i3-msg move container to workspace number 10 ; i3-msg workspace number 10 ;;
esac

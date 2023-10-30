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
" | rofi -dmenu -i -theme ~/.config/rofi/oneliner.rasi -p "open workspace:")

case "$chosen" in
    "1")  i3-msg workspace 1  ;;
    "2")  i3-msg workspace 2  ;;
    "3")  i3-msg workspace 3  ;;
    "4")  i3-msg workspace 4  ;;
    "5")  i3-msg workspace 5  ;;
    "6")  i3-msg workspace 6  ;;
    "7")  i3-msg workspace 7  ;;
    "8")  i3-msg workspace 8  ;;
    "9")  i3-msg workspace 9  ;;
    "10") i3-msg workspace 10 ;;
esac

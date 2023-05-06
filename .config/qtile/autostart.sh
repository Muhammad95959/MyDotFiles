#!/bin/bash

picom --config $HOME/.config/qtile/picom.conf &
dunst &
volnoti -t 2 -r 15 &

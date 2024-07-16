#!/bin/sh

i3-msg floating enable, resize set 1600 900, move position center ||
hyprctl dispatch setfloating && hyprctl dispatch resizeactive exact 1600 900 && hyprctl dispatch centerwindow

#!/bin/bash

apps=$(ps -eo pid,%mem,comm --sort=-%mem | awk '{if ($1 != "PID") print $0}')
selected_app=$(printf '%s' "$apps" | rofi -dmenu -theme ~/.config/rofi/launcher.rasi | awk '{print $1}')
kill "$selected_app"

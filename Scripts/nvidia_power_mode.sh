#!/bin/bash

chosen=$(printf "\
Auto
Adaptive
Prefer Maximum Performance\
" | rofi -dmenu -i -theme ~/.config/rofi/nvidia_mode_chooser.rasi -p "choose a mode: ")

case $chosen in
    "Auto") nvidia-settings -a "[gpu:0]/GPUPowerMizerMode=2" ;;
    "Adaptive") nvidia-settings -a "[gpu:0]/GPUPowerMizerMode=0" ;;
    "Prefer Maximum Performance") nvidia-settings -a "[gpu:0]/GPUPowerMizerMode=1" ;;
esac

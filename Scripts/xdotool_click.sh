#!/bin/bash

window_class_name="$(xdotool getactivewindow getwindowclassname)"
case $window_class_name in
    "jetbrains-studio" | "jetbrains-idea-ce") xdotool mousemove 1885 978 click 1 sleep 0.02 mousemove restore ;;
    "Thorium-browser") xdotool mousemove 1890 153 click 1 sleep 0.02 mousemove restore ;;
    "Brave-browser") xdotool mousemove 1890 153 click 1 sleep 0.02 mousemove restore ;;
    *) xdotool mousemove 1680 10 click 1 sleep 0.02 mousemove restore ;;
esac

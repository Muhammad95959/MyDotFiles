#! bin/bash

window_class_name="$(xdotool getactivewindow getwindowclassname)"
case $window_class_name in 
    "jetbrains-studio") xdotool mousemove 1861 953 click 1 sleep 0.02 mousemove restore ;;
    "Brave-browser") xdotool mousemove 1890 153 click 1 sleep 0.02 mousemove restore ;;
esac

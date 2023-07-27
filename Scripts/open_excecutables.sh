#!/bin/bash

chosen=$(printf "\
Change Borders' Colors
Change Nvidia Power Mode
Open English Learner
Open Video Downloader
Toggle Gaps
Toggle Polybar Location
Update MyDotFiles Repo\
" | rofi -dmenu -i -theme ~/.config/rofi/script_chooser.rasi -p "choose a script: ")

case "$chosen" in
    "Change Borders' Colors") bash ~/Scripts/i3_border_changer.sh ;;
    "Change Nvidia Power Mode") bash ~/Scripts/nvidia_power_mode.sh ;;
    "Open English Learner") kitty -e bash /mnt/Disk_D/Muhammad/English_Learner/english_learner.sh ;;
    "Open Video Downloader") i3-msg workspace 10; kitty --class yt-dlp -e bash ~/Scripts/yt-dlp_script.sh ;;
    "Toggle Gaps") bash ~/Scripts/toggle_gaps.sh ;;
    "Toggle Polybar Location") bash ~/Scripts/toggle_polybar_location.sh ;;
    "Update MyDotFiles Repo") bash ~/Scripts/update_MyDotFiles_repo.sh ;;
esac

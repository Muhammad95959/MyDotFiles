#!/bin/bash

chosen=$(printf "\
Change Borders' Colors
Change Nvidia Power Mode
Open English Learner
Open Video Downloader
Toggle Gaps
Toggle Polybar Location
Toggle VPN
Update MyDotFiles Repo\
" | rofi -dmenu -i -theme ~/.config/rofi/script_chooser.rasi -p "choose a script: ")

case "$chosen" in
    "Change Borders' Colors") bash ~/.config/i3/scripts/i3_border_changer.sh ;;
    "Change Nvidia Power Mode") bash ~/.config/i3/scripts/nvidia_power_mode.sh ;;
    "Open English Learner") kitty -e bash /mnt/Disk_D/Muhammad/English_Learner/english_learner.sh ;;
    "Open Video Downloader") i3-msg workspace 10; kitty --class yt-dlp -e bash ~/.config/i3/scripts/yt-dlp_script.sh ;;
    "Toggle Gaps") bash ~/.config/i3/scripts/toggle_gaps.sh ;;
    "Toggle Polybar Location") bash ~/.config/i3/scripts/toggle_polybar_location.sh ;;
    "Toggle VPN") bash ~/.config/i3/scripts/toggle_vpn.sh ;;
    "Update MyDotFiles Repo") bash ~/.config/i3/scripts/update_MyDotFiles_repo.sh ;;
esac

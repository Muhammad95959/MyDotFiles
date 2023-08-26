#!/bin/bash

chosen=$(printf "\
Change Borders' Colors
Open English Learner
Toggle Gaps
Toggle Smart Gaps
Toggle Polybar Location
Update MyDotFiles Repo
Stream Youtube On MPV
Open Video Downloader\
" | rofi -dmenu -i -theme ~/.config/rofi/script_chooser.rasi -p "choose a script: ")

case "$chosen" in
    "Change Borders' Colors") bash ~/Scripts/i3_border_changer.sh ;;
    "Open English Learner") kitty -e bash /mnt/Disk_D/Muhammad/English_Learner/english_learner.sh ;;
    "Toggle Gaps") bash ~/Scripts/toggle_gaps.sh ;;
    "Toggle Smart Gaps") bash ~/Scripts/toggle_i3_smart_gaps.sh ;;
    "Toggle Polybar Location") bash ~/Scripts/toggle_polybar_location.sh ;;
    "Update MyDotFiles Repo") bash ~/Scripts/update_MyDotFiles_repo.sh ;;
    "Stream Youtube On MPV") bash ~/Scripts/url_to_mpv.sh ;;
    "Open Video Downloader") i3-msg workspace 10; kitty --class yt-dlp -e bash ~/Scripts/yt-dlp_script.sh ;;
esac

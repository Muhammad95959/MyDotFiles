#!/bin/bash

cd ~/Downloads || echo "$HOME/Downloads directory doesn't exist"
toilet yt-dlp script -w 100 --metal --filter border

function blueText {
    reset="\033[0m"
    blue="\033[1;34m"
    echo -e "$blue""$1""$reset"
}

read -rp "$(blueText "Do you want to download a playlist? [n/y]: ")" isPlaylist

split=""
if [ "$isPlaylist" == "y" ] || [ "$isPlaylist" == "Y" ]; then
    read -rp "$(blueText "\n1: download certain videos\n2: download the full playlist (default)\nyour choice : ")" pChoice 
else
    read -rp "$(blueText "\nDo you want to split chapters? [n/y]: ")" split
fi

if [ "$split" == "y" ] || [ "$split" == "Y" ] ; then
    split="--split-chapters"
fi

read -rp "
$(blueText "url: ")" url

toDownload=""
case $pChoice in
    1) 
        read -rp "$(blueText "\nthe videos in the format [ eg: 1,3-7,13 ] : ")" pVideos
        toDownload="--playlist-items $pVideos" ;;
    *) ;;
esac

# pFirstVideo="--playlist-items $(echo $pVideos | awk -F',' '{print $1}' | sed 's/-.*//')"

read -rp "$(blueText "
download options:- 
1: all
2: audio only
3: video only
4: full (default)

your choice : ")" choice 

case $choice in
    1) yt-dlp -F "$toDownload" "$url" ;;
    2) yt-dlp -F "$toDownload" "$url" | grep -i 'audio only' ;;
    3) yt-dlp -F "$toDownload" "$url" | grep -i 'video only' ;;
    *) yt-dlp -F "$toDownload" "$url" | sed '/images/d;/audio\ only/d;/video\ only/d' ;;
esac

read -rp "$(blueText "\nyour chosen ID : ")" quality

case $isPlaylist in
    y | Y) yt-dlp -f "$quality" -o "%(playlist_index)02d - %(title)s.%(ext)s" "$toDownload" "$url" ;;
    *) yt-dlp "$split" -f "$quality" "$url" ;;
esac

notify-send "download completed"

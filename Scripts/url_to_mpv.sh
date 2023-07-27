#!/bin/bash

url=$(xclip -o)
quality=$(printf "144p\n240p\n360p\n480p\n720p\n1080p" | rofi -dmenu \
    -mesg "$url" \
    -theme ~/.config/rofi/url_to_mpv.rasi
)

case $quality in
    "144p") mpv --ytdl-format="[height<=144]" "$url" ;;
    "240p") mpv --ytdl-format="[height<=240]" "$url" ;;
    "360p") mpv --ytdl-format="[height<=360]" "$url" ;;
    "480p") mpv --ytdl-format="[height<=480]" "$url" ;;
    "720p") mpv --ytdl-format="[height<=720]" "$url" ;;
    "1080p") mpv --ytdl-format="[height<=1080]" "$url" ;;
esac

cd ~/Downloads
toilet yt-dlp script -w 100 --metal --filter border

function blueText {
    reset="\033[0m"
    blue="\033[1;34m"
    echo -e $blue"$1"$reset
}

read -p "$(blueText "Do you want to download a playlist? [n/y]: ")" isPlaylist

read -p "
$(blueText "url: ")" url

read -p "$(blueText "
download options:- 
1: all
2: audio only
3: video only
4: full (default)

your choice : ")" choice 

case $choice in
    1) yt-dlp -F $url ;;
    2) yt-dlp -F $url | grep -i 'audio only' ;;
    3) yt-dlp -F $url | grep -i 'video only' ;;
    *) yt-dlp -F $url | sed '/images/d;/audio\ only/d;/video\ only/d' ;;
esac

read -p "$(blueText "
your chosen number : ")" quality

case $isPlaylist in
    y | Y) yt-dlp -f $quality -o "%(playlist_index)02d - %(title)s.%(ext)s" $url ;;
    *) yt-dlp -f $quality $url ;;
esac

notify-send "download completed"

#!/bin/sh

chosen=$(printf "\
1680 x 1050
1400 x 1050
1280 x 1024
1600 x 900
1400 x 900
1280 x 960
1440 x 810
1368 x 768
1280 x 800
1280 x 720
1024 x 768
1024 x 576
960 x 720
928 x 696
896 x 672
960 x 600
960 x 540
800 x 600
840 x 525
864 x 486
700 x 525
800 x 450
640 x 512
700 x 450
640 x 480
720 x 405
684 x 384
640 x 400
640 x 360
512 x 384
512 x 288
480 x 270
400 x 300
432 x 243
320 x 240
360 x 202
320 x 180\
" | rofi -dmenu -i -theme ~/.config/rofi/oneliner.rasi -p "choose the dimentions: ")

case "$chosen" in
"1680 x 1050") i3-msg floating enable && i3-msg resize set 1680 1050 && i3-msg move position center ;;
"1400 x 1050") i3-msg floating enable && i3-msg resize set 1400 1050 && i3-msg move position center ;;
"1280 x 1024") i3-msg floating enable && i3-msg resize set 1280 1024 && i3-msg move position center ;;
"1600 x 900")  i3-msg floating enable && i3-msg resize set 1600 900  && i3-msg move position center ;;
"1400 x 900")  i3-msg floating enable && i3-msg resize set 1400 900  && i3-msg move position center ;;
"1280 x 960")  i3-msg floating enable && i3-msg resize set 1280 960  && i3-msg move position center ;;
"1440 x 810")  i3-msg floating enable && i3-msg resize set 1440 810  && i3-msg move position center ;;
"1368 x 768")  i3-msg floating enable && i3-msg resize set 1368 768  && i3-msg move position center ;;
"1280 x 800")  i3-msg floating enable && i3-msg resize set 1280 800  && i3-msg move position center ;;
"1280 x 720")  i3-msg floating enable && i3-msg resize set 1280 720  && i3-msg move position center ;;
"1024 x 768")  i3-msg floating enable && i3-msg resize set 1024 768  && i3-msg move position center ;;
"1024 x 576")  i3-msg floating enable && i3-msg resize set 1024 576  && i3-msg move position center ;;
"960 x 720")   i3-msg floating enable && i3-msg resize set 960 720   && i3-msg move position center ;;
"928 x 696")   i3-msg floating enable && i3-msg resize set 928 696   && i3-msg move position center ;;
"896 x 672")   i3-msg floating enable && i3-msg resize set 896 672   && i3-msg move position center ;;
"960 x 600")   i3-msg floating enable && i3-msg resize set 960 600   && i3-msg move position center ;;
"960 x 540")   i3-msg floating enable && i3-msg resize set 960 540   && i3-msg move position center ;;
"800 x 600")   i3-msg floating enable && i3-msg resize set 800 600   && i3-msg move position center ;;
"840 x 525")   i3-msg floating enable && i3-msg resize set 840 525   && i3-msg move position center ;;
"864 x 486")   i3-msg floating enable && i3-msg resize set 864 486   && i3-msg move position center ;;
"700 x 525")   i3-msg floating enable && i3-msg resize set 700 525   && i3-msg move position center ;;
"800 x 450")   i3-msg floating enable && i3-msg resize set 800 450   && i3-msg move position center ;;
"640 x 512")   i3-msg floating enable && i3-msg resize set 640 512   && i3-msg move position center ;;
"700 x 450")   i3-msg floating enable && i3-msg resize set 700 450   && i3-msg move position center ;;
"640 x 480")   i3-msg floating enable && i3-msg resize set 640 480   && i3-msg move position center ;;
"720 x 405")   i3-msg floating enable && i3-msg resize set 720 405   && i3-msg move position center ;;
"684 x 384")   i3-msg floating enable && i3-msg resize set 684 384   && i3-msg move position center ;;
"640 x 400")   i3-msg floating enable && i3-msg resize set 640 400   && i3-msg move position center ;;
"640 x 360")   i3-msg floating enable && i3-msg resize set 640 360   && i3-msg move position center ;;
"512 x 384")   i3-msg floating enable && i3-msg resize set 512 384   && i3-msg move position center ;;
"512 x 288")   i3-msg floating enable && i3-msg resize set 512 288   && i3-msg move position center ;;
"480 x 270")   i3-msg floating enable && i3-msg resize set 480 270   && i3-msg move position center ;;
"400 x 300")   i3-msg floating enable && i3-msg resize set 400 300   && i3-msg move position center ;;
"432 x 243")   i3-msg floating enable && i3-msg resize set 432 243   && i3-msg move position center ;;
"320 x 240")   i3-msg floating enable && i3-msg resize set 320 240   && i3-msg move position center ;;
"360 x 202")   i3-msg floating enable && i3-msg resize set 360 202   && i3-msg move position center ;;
"320 x 180")   i3-msg floating enable && i3-msg resize set 320 180   && i3-msg move position center ;;
esac

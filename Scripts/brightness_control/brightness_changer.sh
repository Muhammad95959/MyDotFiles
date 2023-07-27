#!/bin/bash
OLD_BRIT=0
read -p "action: " action
case $action in
    inc)
        sudo brightnessctl set +5%
        ;;
    dec)
        sudo brightnessctl set 5%-
        ;;
    s_inc)
        sudo brightnessctl set +1%
        ;;
    s_dec)
        sudo brightnessctl set 1%-
        ;;
esac
BRIT=$(brightnessctl info | awk 'NR==2 {print $4}' | grep -o "[0-9]*")
if [[ $BRIT != $OLD_BRIT ]]; then
    volnoti-show $BRIT -s /usr/share/pixmaps/volnoti/display-brightness-symbolic.svg
    OLD_BRIT=$BRIT
fi

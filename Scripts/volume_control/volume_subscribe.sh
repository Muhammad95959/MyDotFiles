#!/bin/bash

MAX_VOL=150
OLD_VOL=$(($(amixer get Master | grep -Po "[0-9]+(?=%)" | tail -1)*100/$MAX_VOL))
pactl subscribe | grep --line-buffered "sink" |
while read; do
	VOL=$(($(amixer get Master | grep -Po "[0-9]+(?=%)" | tail -1)*100/$MAX_VOL))
    if [[ $VOL != $OLD_VOL ]] && [[ $VOL -ne 0 ]]; then
		volnoti-show $VOL
		OLD_VOL=$VOL
    elif [[ $VOL != $OLD_VOL ]] && [[ $Vol -eq 0 ]]; then
        volnoti-show -m
		OLD_VOL=$VOL
	fi
done

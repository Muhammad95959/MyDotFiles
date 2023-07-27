#!/bin/bash

current=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -m1 "" | sed "s/%.*//;s/.*\/.//")
if (( $((current)) < 146 )); then
    pactl set-sink-mute @DEFAULT_SINK@ 0
    pactl set-sink-volume @DEFAULT_SINK@ +5%
fi

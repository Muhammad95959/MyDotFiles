#!/bin/bash

MAX_VOL=150
pactl set-sink-mute @DEFAULT_SINK@ toggle
if pactl list sinks | grep -q "Mute: yes"; then volnoti-show -m; else volnoti-show $(($(pactl list sinks | grep -P "Volume: front-left:" | awk '{print $5}' | sed 's/%//') * 100 / $MAX_VOL)); fi

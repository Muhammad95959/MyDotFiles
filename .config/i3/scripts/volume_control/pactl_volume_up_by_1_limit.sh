current=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -m1 "" | sed "s/%.*//;s/.*\/.//")
if (( $((current)) < 150 )); then
    pactl set-sink-volume @DEFAULT_SINK@ +1%
fi

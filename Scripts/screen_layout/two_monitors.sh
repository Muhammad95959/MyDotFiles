#!/bin/bash
counter=0
while true; do
  if xrandr | grep -q "HDMI-1-0 connected"; then
    xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-0 --off --output DP-1-1 --off --output HDMI-1-0 --mode 1366x768 --pos 1920x0 --rotate normal
    polybar_count=$(pgrep -cx "polybar")
    if [ "$polybar_count" -lt 2 ]; then
      polybar -r secondary &
    fi
    nitrogen --restore
    break
  else
    echo "HDMI-1-0 is disconnected"
    ((counter++))
    sleep 1
    if [ "$counter" -gt 9 ]; then
      break
    fi
  fi
done

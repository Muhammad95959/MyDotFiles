#!/bin/bash

current=$(i3-msg -t get_workspaces | grep -o "num.*focused\":true" | sed "s/num\"://;s/.*focused\":false.*\"num\"://;s/,.*//")
next=$(($(($current))+1))
if (( $((current)) < 10 )); then
i3-msg move container to workspace number ${next}
i3-msg workspace number ${next}
fi

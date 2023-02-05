#!/bin/bash

current=$(i3-msg -t get_workspaces | grep -o "num.*focused\":true" | sed "s/num\"://;s/.*focused\":false.*\"num\"://;s/,.*//")
previous=$(($(($current)) - 1))
if (( $((current)) > 1 )); then
i3-msg move container to workspace number ${previous}
i3-msg workspace number ${previous}
fi

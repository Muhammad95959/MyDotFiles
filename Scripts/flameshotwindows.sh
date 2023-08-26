#!/bin/bash

eval "$(xdotool selectwindow getwindowgeometry --shell)"
REGION="${WIDTH}x${HEIGHT}+${X}+${Y}"
flameshot gui --region "$REGION"

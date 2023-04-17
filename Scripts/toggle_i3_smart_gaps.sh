#!/bin/bash

if grep -q '^# hide_edge_borders.*###' ~/.config/i3/config; then
    sed -Ei '/smart_gaps.*###/s/^/# /' ~/.config/i3/config
    sed -Ei '/smart_borders.*###/s/^/# /' ~/.config/i3/config
    sed -Ei '/hide_edge_borders.*###/s/^# //' ~/.config/i3/config
    i3-msg restart
else
    sed -Ei '/smart_gaps.*###/s/^# //' ~/.config/i3/config
    sed -Ei '/smart_borders.*###/s/^# //' ~/.config/i3/config
    sed -Ei '/hide_edge_borders.*###/s/^/# /' ~/.config/i3/config
    i3-msg restart
fi

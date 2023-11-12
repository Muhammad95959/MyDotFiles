#!/bin/bash

sudo udevmon &
xset r rate 240 42
setxkbmap -layout "us,ara" -option "lv3:ralt_alt,grp:alt_shift_toggle"
# setxkbmap -layout "us,ara" -option "lv3:ralt_alt,grp:alt_shift_toggle" -option ctrl:nocaps -option ctrl:swap_rwin_rctl
# xcape -e "Control_L=Escape"

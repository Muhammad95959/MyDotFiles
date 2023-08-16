#!/bin/bash

# setxkbmap -layout "us,ara" -option "lv3:ralt_alt,grp:alt_shift_toggle" -option ctrl:nocaps -option ctrl:swap_rwin_rctl
setxkbmap -layout "us,ara" -option "lv3:ralt_alt,grp:alt_shift_toggle" -option ctrl:nocaps
xcape -e "Control_L=Escape"
xset r rate 420 42

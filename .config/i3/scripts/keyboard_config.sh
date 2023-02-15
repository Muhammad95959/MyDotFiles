#!/bin/bash

setxkbmap -layout us,ar 
setxkbmap -option 'grp:alt_shift_toggle' 
setxkbmap -option ctrl:nocaps
xcape -e "Control_L=Escape"
xset r rate 420 42
xmodmap -e "remove mod5 = ISO_Level3_Shift"

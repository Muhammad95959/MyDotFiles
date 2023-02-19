#!/bin/bash

nitrogen --set-auto /mnt/Disk_D/Backgrounds/catppuccin_triangle.jpg &
killall polybar
polybar -c ~/.config/polybar/polycat.ini -r &

#!/bin/bash

numlockx &
unclutter &
amixer set Capture 40% &
nvidia-settings -a "[gpu:0]/GPUPowerMizerMode=2" &
bash ~/Scripts/keyboard_config.sh &
xinput set-prop 'Synaptics TM3336-004' 'libinput Accel Speed' 0.5 &
xinput set-prop 'Synaptics TM3336-004' 'libinput Natural Scrolling Enabled' 1 &
xinput set-prop 'PixArt Lenovo USB Optical Mouse' 'libinput Accel Speed' 0.5 &
polybar -r -c ~/.config/qtile/polybar.ini &
nm-applet &
killall nm-applet &
nitrogen --restore &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
~/Scripts/volume_control/volume_subscribe.sh &
gpaste-client start &
sudo virsh net-start default &

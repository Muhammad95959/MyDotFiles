#!/bin/bash

nitrogen --restore &
killall polybar ; polybar dk-main -r &
unclutter &
udiskie &
xset s off -dpms &
amixer set Capture 80% &
deadd-notificatoin-center &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
gpaste-client start &
sudo virsh net-start default &
sudo chown "$USER":"$USER" /sys/class/backlight/intel_backlight/brightness &
xss-lock --transfer-sleep-lock -- xfce4-screensaver-command -l &
xinput set-prop '2.4G Mouse' 'libinput Accel Speed' 0.5 &
xinput set-prop 'Synaptics TM3336-004' 'libinput Accel Speed' 0.5 &
xinput set-prop 'Synaptics TM3336-004' 'libinput Tapping Enabled' 1 &
xinput set-prop 'Synaptics TM3336-004' 'libinput Natural Scrolling Enabled' 1 &
xinput set-prop 'PixArt Lenovo USB Optical Mouse' 'libinput Accel Speed' 0.3 &
killall volume_subscribe.sh ; ~/Scripts/volume_control/volume_subscribe.sh &
bash ~/Scripts/screen_layout/two_monitors.sh &
bash ~/Scripts/keyboard_config.sh &
xfce4-screensaver &
volnoti -t 2 &
picom --config ~/.config/dk/picom.conf &

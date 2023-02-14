#!/bin/bash

FILE=/etc/sysctl.d/40-ipv6.conf
VPN=JP-219.100.37.192
# VPN=RO-5.181.235.14

if test -f "$FILE"; then
    nmcli con down $VPN
    killall nm-applet
    sudo rm $FILE
    notify-send -t 5000 "$FILE was removed"
    sudo systemctl restart systemd-sysctl.service
    sudo systemctl restart NetworkManager.service
else
    nm-applet &
    sudo cp /mnt/Disk_D/Muhammad/Linux_stuff/Scripts/root/40-ipv6.conf /etc/sysctl.d/
    notify-send -t 5000 "$FILE was added"
    sudo systemctl restart systemd-sysctl.service
    sudo systemctl restart NetworkManager.service
    timeout=15
    end=$(( $(date +%s) + timeout ))
    while [ "$(nmcli -f GENERAL.STATE con show JP-219.100.37.192 | awk '{print $2}')" != "activated" ] && [ "$(date +%s)" -lt $end ]; do
        sleep 1
        nmcli con up $VPN
        counter++
    done
fi

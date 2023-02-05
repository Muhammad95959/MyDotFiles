#!/bin/bash

if [[ "$(grep "modules-left" ~/.config/polybar/config.ini)" =~ .*"all-workspaces".* ]];
then
    sed -i "/modules-left = /s/ all-workspaces//" ~/.config/polybar/config.ini
else
    sed -i "/modules-left = /s/i3/i3 all-workspaces/" ~/.config/polybar/config.ini
fi

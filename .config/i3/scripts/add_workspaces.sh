#!/bin/bash

if [[ "$(grep "modules-left" ~/.config/polybar/config.ini)" =~ .*"all-workspaces".* ]];
then
    sed -i "/modules-left = /s/ sep all-workspaces//" ~/.config/polybar/config.ini
else
    sed -i "/modules-left = /s/i3/i3 sep all-workspaces/" ~/.config/polybar/config.ini
fi

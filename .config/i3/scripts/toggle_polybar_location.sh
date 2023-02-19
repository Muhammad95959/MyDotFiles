#!/bin/bash

if [ "$(grep 'bottom = true' ~/.config/polybar/config.ini)" != "" ]; then
    sed -Ei "/bottom = true/s/true/false/" ~/.config/polybar/config.ini
elif [ "$(grep 'bottom = true' ~/.config/polybar/config.ini)" == "" ]; then
    sed -Ei "/bottom = false/s/false/true/" ~/.config/polybar/config.ini
fi

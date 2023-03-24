#!/bin/bash

if [ "$(grep 'bottom = true' ~/.config/polybar/config.ini)" != "" ]; then
    sed -Ei "/bottom = true/s/true/false/" ~/.config/polybar/config.ini
    # sed -Ei "/^background = /s/#.*/#8824273a/" ~/.config/polybar/config.ini
elif [ "$(grep 'bottom = true' ~/.config/polybar/config.ini)" == "" ]; then
    sed -Ei "/bottom = false/s/false/true/" ~/.config/polybar/config.ini
    # sed -Ei "/^background = /s/#.*/#000000/" ~/.config/polybar/config.ini
fi

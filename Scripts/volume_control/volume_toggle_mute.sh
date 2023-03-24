#!/bin/bash

MAX_VOL=150
amixer set Master toggle; if amixer get Master | grep -Fq "[off]"; then volnoti-show -m; else volnoti-show $(($(amixer get Master | grep -Po "[0-9]+(?=%)" | tail -1)*100/$MAX_VOL)); fi

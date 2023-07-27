#!/bin/bash

amixer set Capture toggle
if amixer get Capture | grep -Fq "[off]"; then volnoti-show 0 -s /usr/share/pixmaps/volnoti/mic_mute.svg; else volnoti-show $(amixer get Capture | grep -Po "[0-9]+(?=%)" | tail -1) -s /usr/share/pixmaps/volnoti/mic.svg; fi

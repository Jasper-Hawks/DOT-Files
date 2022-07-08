#!/bin/bash

# Set up dual mointor display
xlayoutdisplay -o DP-4 -o DP-2 -r 165 -d 95 &
xrandr --output DP-4  --mode 2560x1440 --rate 165
xrandr --output DP-2 --mode 2560x1440 --rate 165 --same-as DP-4

# Restore wallpaper from previous session
wal -R

# Run compositor as a daemon
picom -b

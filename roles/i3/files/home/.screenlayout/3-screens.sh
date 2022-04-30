#!/bin/sh
xrandr --output eDP1 --primary --mode 1920x1080 --pos 3840x0 --rotate normal --output DP1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI1 --off --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output VIRTUAL1 --off
sleep 1s
nitrogen --head=0 --set-zoom-fill /usr/share/backgrounds/blackout.jpg
nitrogen --head=1 --set-zoom-fill /usr/share/backgrounds/blackout.jpg
nitrogen --head=2 --set-zoom-fill /usr/share/backgrounds/blackout.jpg

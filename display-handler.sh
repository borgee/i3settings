#!/bin/bash -x

set -x

case "$SRANDRD_ACTION" in
    "DP1-1 connected") xrandr --output DP1-1 --primary --auto --right-of eDP1 --output DP1-2 --off;;
    "DP1-2 connected") xrandr --output DP1-2 --auto --right-of DP1-1;;
    "DP1-3 connected") xrandr --output DP1-3 --auto --right-of eDP1;;
    "HDMI1 connected") xrandr --output HDMI1 --auto --right-of eDP1;;
    "HDMI2 connected") xrandr --output HDMI2 --auto --right-of eDP1;;
    "DP1-1 disconnected") xrandr --output DP1-1 --off --output eDP1 --primary;;
    "DP1-2 disconnected") xrandr --output DP1-2 --off;;
    "DP1-3 disconnected") xrandr --output DP1-3 --off;;
    "HDMI1 disconnected") xrandr --output HDMI1 --off;;
    "HDMI2 disconnected") xrandr --output HDMI2 --off;;
esac

#!/bin/bash

LAPTOP="eDP-2"

if [ "$1" = "off" ]; then
    # Turn off laptop screen
    hyprctl keyword monitor "$LAPTOP,disable"
    echo "Laptop monitor disabled."
elif [ "$1" = "on" ]; then
    # Turn the screen back on (auto-detect resolution)
    hyprctl keyword monitor "$LAPTOP,preferred,2560x400,auto"
    echo "Laptop monitor re-enabled."
else
    echo "Usage: $0 on|off"
fi


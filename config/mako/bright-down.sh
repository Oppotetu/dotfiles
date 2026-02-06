#!/bin/bash
brightnessctl -c backlight set 5%-
val=$(brightnessctl get)
max=$(brightnessctl max)
percent=$(( val * 100 / max ))
notify-send -h int:value:$percent -h string:x-canonical-private-synchronous:brightness "Brightness" "$percent%"

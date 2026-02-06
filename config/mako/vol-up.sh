#!/bin/bash

# Increase volume by 5%
# pactl set-sink-volume @DEFAULT_SINK@ +5%
pamixer -ui 5

# Get current volume
vol=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -n1 | tr -d '%')

# Send notification
notify-send \
  -h int:value:$vol \
  -h string:x-canonical-private-synchronous:volume \
  "Volume" "$vol%"

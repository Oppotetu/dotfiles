#!/usr/bin/env bash

sleep 0.1

if grep -q 1 /sys/class/leds/*::capslock/brightness; then
    echo "on"
    state="ON"
else
    echo "off"
    state="OFF"
fi

notify-send \
  -h string:x-canonical-private-synchronous:capslock \
  "Caps Lock" "$state"
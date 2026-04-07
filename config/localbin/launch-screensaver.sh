#!/bin/bash

if [ $((RANDOM % 2)) -eq 0 ]; then
  wezterm start --class floating-screensaver cmatrix -s
else
  wezterm start --class floating-screensaver cbonsai --live --screensaver
fi

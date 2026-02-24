#!/bin/bash

THEME_DIR="$HOME/themes"

# select theme
THEME=$(ls "$THEME_DIR" | fuzzel -d)

# pick first wallpaper
WALL=$(ls "$THEME_DIR/$THEME" | head -n1)

FULL_PATH="$THEME_DIR/$THEME/$WALL"

# generate palette
wallust build "$FULL_PATH"

# reload waybar
swaymsg reload
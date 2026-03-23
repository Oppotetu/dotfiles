#!/usr/bin/env bash

# wallpaper=$(find "$HOME/Pictures/wallpapers" -type f \( -iname "*.jpg" -o -iname "*.png" \) | fuzzel --dmenu)
wallpaper=$(find "$HOME/Pictures/wallpapers" -type f \( -iname "*.jpg" \) | fuzzel --dmenu)
# wallpaper=$(cd "$HOME/Pictures/wallpapers" && find . -type f \( -iname "*.jpg" \) -printf '%f\n' | fuzzel --dmenu)

matugen image "$wallpaper" --verbose --show-colors

hyprctl hyprpaper wallpaper ", $wallpaper"

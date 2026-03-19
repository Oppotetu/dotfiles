#!/usr/bin/env bash  

wallpaper=$(find "$HOME/Pictures/wallpapers" -type f \( -iname "*.jpg" -o -iname "*.png" \) | fuzzel --dmenu)

matugen image "$wallpaper" --verbose --show-colors

hyprctl hyprpaper wallpaper ", $wallpaper"



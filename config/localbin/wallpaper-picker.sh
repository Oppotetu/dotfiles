#!/usr/bin/env bash

# wallpaper=$(find "$HOME/Pictures/wallpapers" -type f \( -iname "*.jpg" -o -iname "*.png" \) | fuzzel --dmenu)
wallpaper=$(find "$HOME/Pictures/wallpapers" -type f \( -iname "*.jpg" \) | fuzzel --dmenu)

# WallDir="$HOME/Pictures/wallpapers"

# find "$WallDir" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) |
#   while IFS= read -r file; do
#     # Use the filename as the label, and the same file as the icon
#     # (fuzzel will render it as a small icon next to the text)
#     echo -en "$(basename "$file")\0icon\x1f$file\n"
#   done | fuzzel --dmenu

# wallpaper=$(cd "$HOME/Pictures/wallpapers" && find . -type f \( -iname "*.jpg" \) -printf '%f\n' | fuzzel --dmenu)

matugen image "$wallpaper" --verbose --show-colors

hyprctl hyprpaper wallpaper ", $wallpaper"

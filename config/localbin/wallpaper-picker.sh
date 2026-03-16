#!/usr/bin/sh


# Pick wallpaper
wallpaper=$(find ~/Pictures/wallpapers -type f \( -iname "*.jpg" -o -iname "*.png" \) | fuzzel --dmenu)

# Pick mode
# mode=$(echo -e "dark\nlight" | fuzzel --dmenu --prompt "Theme: ")

# case "$mode" in
#   dark)   wallust run "$wallpaper" --palette ansidark16 --skip-sequences ;;
#   light)  wallust run "$wallpaper" --palette ansilight16 ;;
# esac

matugen image "$wallpaper" --verbose --show-colors

hyprctl hyprpaper wallpaper ", $wallpaper"

# # Auto-reload apps
# pkill -USR2 waybar



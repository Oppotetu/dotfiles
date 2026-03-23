#!/usr/bin/env bash  

THEME_FOLDER="$HOME"/.config/current/theme
WALLPAPER_NAME_PATH=$(cat "$THEME_FOLDER/wallpaper.txt")
echo "$WALLPAPER_NAME_PATH"
WALLPAPER_NAME=$(basename "$WALLPAPER_NAME_PATH")
echo "$WALLPAPER_NAME"
WALLPAPER_FOLDER="$HOME"/Pictures/wallpapers

# mkdir -p "$THEME_FOLDER"/wallpaper
# rm "$THEME_FOLDER"/wallpaper
ln -sf "$WALLPAPER_FOLDER/$WALLPAPER_NAME" "$THEME_FOLDER"/wallpaper.jpg

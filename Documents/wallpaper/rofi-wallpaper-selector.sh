#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/wallpaper"

HYPR_CONFIG_DIR="$HOME/.config/hypr"
HYPR_WALLPAPER="$HYPR_CONFIG_DIR/wallpaper.jpg"

SELECTED=$(for a in "$WALLPAPER_DIR"/*.jpg; do
    echo -en "$(basename "$a")\0icon\x1f$a\n"
done | rofi -dmenu -theme ~/Documents/wallpaper/wallpaper-picker.rasi)

[ -z "$SELECTED" ] && exit 0

WALLPAPER_PATH="$WALLPAPER_DIR/$SELECTED"

cp "$WALLPAPER_PATH" "$HYPR_WALLPAPER"

wal -i "$HYPR_WALLPAPER"

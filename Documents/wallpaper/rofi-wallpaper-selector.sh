#!/bin/bash

# Caminho da pasta de wallpapers
WALLPAPER_DIR="$HOME/Pictures/wallpaper"

# Diretório destino para o wallpaper (Hyprland config)
HYPR_CONFIG_DIR="$HOME/.config/hypr"
HYPR_WALLPAPER="$HYPR_CONFIG_DIR/wallpaper.jpg"

# Seleciona a imagem com thumbs no rofi
SELECTED=$(for a in "$WALLPAPER_DIR"/*.jpg; do
    echo -en "$(basename "$a")\0icon\x1f$a\n"
done | rofi -dmenu -theme ~/Documents/wallpaper/wallpaper-picker.rasi -p "Escolha o wallpaper")

# Se nada foi selecionado, sair
[ -z "$SELECTED" ] && exit 0

# Caminho completo da imagem selecionada
WALLPAPER_PATH="$WALLPAPER_DIR/$SELECTED"

# Copia o wallpaper selecionado para o diretório de config do Hyprland
cp "$WALLPAPER_PATH" "$HYPR_WALLPAPER"

# Executa swww e wal com a cópia no diretório de config
swww img "$HYPR_WALLPAPER" && wal -i "$HYPR_WALLPAPER"

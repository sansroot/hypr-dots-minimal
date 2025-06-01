#!/bin/bash

# Inicializa o swww daemon, se ainda não estiver rodando
swww init &

# Pequeno atraso para garantir que o swww esteja pronto
sleep 0.5

# Define o wallpaper
swww img ~/.config/hypr/wallpaper.jpg


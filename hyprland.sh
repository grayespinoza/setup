#!/bin/bash -eu

sudo pacman -Syu --noconfirm

sudo pacman -S --noconfirm hyprland mako xdg-desktop-portal-hyprland hyprpolkitagent

sudo pacman -S --noconfirm waybar hyprpaper hyprlauncher hypridle hyprsunset hyprshutdown

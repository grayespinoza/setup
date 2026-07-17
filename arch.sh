#!/bin/bash -eu

sudo pacman -Syu --noconfirm

sudo pacman -S --noconfirm ufw

sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo ufw enable
sudo systemctl enable ufw.service

sudo pacman -S --noconfirm git less base-devel

sudo pacman -S --noconfirm docker docker-compose

sudo systemctl enable docker.service
sudo systemctl start docker.service

sudo usermod -aG docker $USER

sudo pacman -S --noconfirm flatpak

sudo pacman -S --noconfirm neovim yazi

mkdir -p ~/aur
cd ~/aur
git clone https://aur.archlinux.org/wezterm-git.git
cd wezterm-git
makepkg -si

flatpak install -y flathub com.github.tchx84.Flatseal io.gitlab.librewolf-community

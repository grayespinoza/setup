#!/bin/bash -eu

mkdir -p ~/.repo
cd ~/.repo
git clone https://github.com/grayespinoza/.dotfiles.git
cd .dotfiles

ln -s .bashrc ~/
ln -s .gitconfig ~/
ln -s .wezterm.lua ~/

ln -s .config/hyprland ~/.config/
ln -s .config/mpd ~/.config/
ln -s .config/mpv ~/.config/
ln -s .config/nvim ~/.config/
ln -s .config/yazi ~/.config/

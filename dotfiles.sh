#!/bin/bash -eu

mkdir -p ~/.repo
cd ~/.repo
git clone https://github.com/grayespinoza/.dotfiles.git
cd .dotfiles

ln -s ~/.repo/.dotfiles/.bashrc ~/
ln -s ~/.repo/.dotfiles/.gitconfig ~/
ln -s ~/.repo/.dotfiles/.wezterm.lua ~/

ln -s ~/.repo/.dotfiles/.config/hypr ~/.config/
ln -s ~/.repo/.dotfiles/.config/mpd ~/.config/
ln -s ~/.repo/.dotfiles/.config/mpv ~/.config/
ln -s ~/.repo/.dotfiles/.config/nvim ~/.config/
ln -s ~/.repo/.dotfiles/.config/yazi ~/.config/

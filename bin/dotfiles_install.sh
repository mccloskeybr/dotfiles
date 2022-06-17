#!/bin/bash

echo "beginning install..."

mkdir ~/.dotfiles
mkdir ~/.config
mkdir ~/.config/nvim
mkdir ~/.config/nvim/autoload
mkdir ~/.zsh
mkdir ~/.tmux
mkdir ~/.iterm2
mkdir ~/bin

# install zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# install vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install this :)
git clone https://github.com/mccloskeybr/dotfiles ~/.dotfiles

# install dependencies
sudo apt-get install ripgrep fd-find

cd ~/.dotfiles
cp ./zshrc ~/.zshrc
cp ./hgrc ~/.hgrc
cp ./tmux.conf ~/.tmux.conf

cp -r ./nvim/* ~/.config/nvim
cp -r ./zsh/* ~/.zsh
cp -r ./tmux/* ~/.tmux
cp -r ./bin/* ~/bin

source ~/.zshrc

echo "done."

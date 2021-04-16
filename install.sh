#!/bin/bash

echo "beginning install..."

# install zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install this :)
git clone https://github.com/mccloskeybr/dotfiles ~/.dotfiles

mkdir ~/.vim
mkdir ~/.zsh
mkdir ~/.iterm2

cd ~/.dotfiles
cp ./zshrc ~/.zshrc
cp ./vimrc ~/.vimrc
cp ./hgrc ~/.hgrc
cp -r ./vim/* ~/.vim
cp ./zsh/* ~/.zsh
cp ./iterm2/* ~/.iterm2

source ~/.zshrc

echo "done."

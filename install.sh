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
mkdir ~/.tmux
mkdir ~/.iterm2

cd ~/.dotfiles
cp ./zshrc ~/.zshrc
cp ./vimrc ~/.vimrc
cp ./hgrc ~/.hgrc
cp ./tmux.conf ~/.tmux.conf
cp ./iterm2/* ~/.iterm2

cp -r ./vim/* ~/.vim
cp -r ./zsh/* ~/.zsh
cp -r ./tmux/* ~/.tmux

source ~/.zshrc

echo "done."

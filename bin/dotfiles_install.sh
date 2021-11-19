#!/bin/bash

echo "beginning install..."

mkdir ~/.dotfiles
mkdir ~/.vim
mkdir ~/.zsh
mkdir ~/.tmux
mkdir ~/.profiles
mkdir ~/bin

# apt-get packages
sudo apt-get install cmake ctags python3 pip fonts-powerline

# install zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install this :)
git clone https://github.com/mccloskeybr/dotfiles ~/.dotfiles

# copy relevant dotfiles over
cd ~/.dotfiles
cp ./zshrc ~/.zshrc
cp ./vimrc ~/.vimrc
cp ./hgrc ~/.hgrc
cp ./tmux.conf ~/.tmux.conf

cp -r ./vim/* ~/.vim
cp -r ./zsh/* ~/.zsh
cp -r ./tmux/* ~/.tmux
cp -r ./profiles/* ~./profiles
cp -r ./bin/* ~/bin

source ~/.zshrc

echo "done."

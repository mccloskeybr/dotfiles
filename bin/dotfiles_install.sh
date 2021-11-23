#!/bin/bash

echo "beginning install..."

mkdir ~/.dotfiles
mkdir ~/.vim
mkdir ~/.zsh
mkdir ~/.tmux
mkdir ~/.config
mkdir ~/.config/alacritty
mkdir ~/.config/i3
mkdir ~/bin

# install the goods
sudo apt-get install cmake ctags i3 dex alacritty gnome-panel suckless-tools gmrun python3 pip fonts-powerline fzf nitrogen

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
cp ./profiles/alacritty.yml ~/.config/alacritty/alacritty.yml
cp ./i3.config ~/.config/i3/config

cp -r ./vim/* ~/.vim
cp -r ./zsh/* ~/.zsh
cp -r ./tmux/* ~/.tmux
cp -r ./xmonad/* ~/.xmonad
cp -r ./i3/* ~/.config/i3/
cp -r ./bin/* ~/bin

source ~/.zshrc

echo "done."

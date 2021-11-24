#!/bin/bash

echo "beginning install..."

mkdir ~/.dotfiles
mkdir ~/.vim
mkdir ~/.zsh
mkdir ~/.tmux
mkdir ~/.hg
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
cp -r ./zsh/* ~/.zsh
cp -r ./vim/* ~/.vim
cp -r ./tmux/* ~/.tmux
cp -r ./hg/* ~/.hg
cp -r ./i3/* ~/.config/i3/
cp -r ./bin/* ~/bin
cp ./profiles/alacritty.yml ~/.config/alacritty/alacritty.yml

# move basefiles out
mv ~/.zsh/.zshrc ~
mv ~/.vim/.vimrc ~
mv ~/.tmux/.tmux.conf ~
mv ~/.hg/.hgrc ~

source ~/.zshrc

echo "done."

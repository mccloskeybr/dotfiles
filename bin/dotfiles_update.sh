#!/bin/bash

# this script simply overwrites everything currently contained in
# the cloned repository. if it's out of date, merge conflicts will happen.

echo "updating dotfiles..."

cp ~/.zshrc ~/.dotfiles/zshrc
cp ~/.vimrc ~/.dotfiles/vimrc
cp ~/.tmux.conf ~/.dotfiles/tmux.conf
cp ~/.hgrc ~/.dotfiles/hgrc

cp ~/.vim/settings.vim ~/.dotfiles/vim/settings.vim
cp ~/.vim/plugins.vim ~/.dotfiles/vim/plugins.vim
cp ~/.vim/keybinds.vim ~/.dotfiles/vim/keybinds.vim
cp -r ~/.vim/funcs/* ~/.dotfiles/vim/funcs/

cp ~/.zsh/exports.zsh ~/.dotfiles/zsh/exports.zsh
cp ~/.zsh/aliases.zsh ~/.dotfiles/zsh/aliases.zsh
cp ~/.zsh/settings.zsh ~/.dotfiles/zsh/settings.zsh
cp ~/.zsh/plugins.zsh ~/.dotfiles/zsh/plugins.zsh
cp -r ~/.zsh/custom_plugins/* ~/.dotfiles/zsh/custom_plugins/
cp -r ~/.zsh/themes/* ~/.dotfiles/zsh/themes/

cp ~/.tmux/settings.conf ~/.dotfiles/tmux/settings.conf
cp ~/.tmux/mappings.conf ~/.dotfiles/tmux/mappings.conf
cp -r ~/.tmux/plugins/* ~/.dotfiles/tmux/plugins/

cp ~/.iterm2/* ~/.dotfiles/iterm2/

cp -r ~/bin/* ~/.dotfiles/bin/

echo "done."

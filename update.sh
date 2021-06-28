#!/bin/bash

# this script simply overwrites everything currently contained in
# the cloned repository. if it's out of date, merge conflicts will happen.

echo "starting to copy..."

cd ~/.dotfiles

cp ~/.zshrc ./zshrc
cp ~/.vimrc ./vimrc
cp ~/.tmux.conf ./tmux.conf
cp ~/.hgrc ./hgrc

cp ~/.vim/settings.vim ./vim/settings.vim
cp ~/.vim/plugins.vim ./vim/plugins.vim
cp ~/.vim/keybinds.vim ./vim/keybinds.vim
cp -r ~/.vim/funcs/* ./vim/funcs/

cp ~/.zsh/exports.zsh ./zsh/exports.zsh
cp ~/.zsh/aliases.zsh ./zsh/aliases.zsh
cp ~/.zsh/settings.zsh ./zsh/settings.zsh
cp ~/.zsh/plugins.zsh ./zsh/plugins.zsh
cp -r ~/.zsh/custom_plugins/* ./zsh/custom_plugins/
cp -r ~/.zsh/themes/* ./zsh/themes/

cp ~/.tmux/settings.conf ./tmux/settings.conf
cp ~/.tmux/mappings.conf ./tmux/mappings.conf
cp -r ~/.tmux/plugins/* ./tmux/plugins/

cp ~/.iterm2/* ./iterm2/

echo "done."

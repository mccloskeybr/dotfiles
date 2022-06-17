#!/bin/bash

# this script simply overwrites everything currently contained in
# the cloned repository. if it's out of date, merge conflicts will happen.

# note that profiles must be manually copied (i.e. iterm2, alacritty).
# files must be manually copied to avoid copying work-specific settings.

echo "updating dotfiles..."

cp ~/.config/nvim/init.vim ~/.dotfiles/nvim/init.vim
cp ~/.config/nvim/plugins.vim ~/.dotfiles/nvim/plugins.vim
cp ~/.config/nvim/plugin_conf.vim ~/.dotfiles/nvim/plugin_conf.vim
cp ~/.config/nvim/plugin_conf.lua ~/.dotfiles/nvim/plugin_conf.lua
cp ~/.config/nvim/settings.vim ~/.dotfiles/nvim/settings.vim
cp ~/.config/nvim/keybinds.vim ~/.dotfiles/nvim/keybinds.vim
cp -r ~/.config/nvim/funcs/* ~/.dotfiles/nvim/funcs/

cp ~/.zshrc ~/.dotfiles/zsh/.zshrc
cp ~/.zsh/exports.zsh ~/.dotfiles/zsh/exports.zsh
cp ~/.zsh/aliases.zsh ~/.dotfiles/zsh/aliases.zsh
cp ~/.zsh/settings.zsh ~/.dotfiles/zsh/settings.zsh
cp ~/.zsh/plugins.zsh ~/.dotfiles/zsh/plugins.zsh
cp -r ~/.zsh/custom_plugins/* ~/.dotfiles/zsh/custom_plugins/
cp -r ~/.zsh/themes/* ~/.dotfiles/zsh/themes/

cp ~/.tmux.conf ~/.dotfiles/tmux/.tmux.conf
cp ~/.tmux/settings.conf ~/.dotfiles/tmux/settings.conf
cp ~/.tmux/mappings.conf ~/.dotfiles/tmux/mappings.conf
cp ~/.tmux/plugins.conf ~/.dotfiles/tmux/plugins.conf
cp -r ~/.tmux/plugins/* ~/.dotfiles/tmux/plugins/

cp ~/.hgrc ~/.dotfiles/hg/.hgrc

cp -r ~/bin/* ~/.dotfiles/bin/

echo "done."

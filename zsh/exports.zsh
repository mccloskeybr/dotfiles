export ZSH="/usr/local/google/home/mccloskeybr/.oh-my-zsh"
ZSH_THEME="agnoster"
# Colored theme is "fahrenheit" via iterm2.
# Font is Roboto Mono for Powerline (iterm2).

plugins=(git)

source $ZSH/oh-my-zsh.sh
source '/etc/bash_completion.d/hgd'

export EDITOR=vim
export VISUAL=vim
export LESS='-M'

PATH=$PATH:$HOME/bin


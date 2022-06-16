export ZSH=$HOME/.oh-my-zsh/

export EDITOR=vim
export VISUAL=vim

export GTEST_COLOR=yes
export CLICOLOR=1

export LESS='-M'

export KEYTIMEOUT=20

export FZF_DEFAULT_OPTS=" \
  --inline-info \
  --reverse \
  --color=fg+:#F8F8F8,bg+:#515559,pointer:#F8F8F8,marker:226 \
  --bind=ctrl-e:select-all+accept \
  --bind=ctrl-d:half-page-down \
  --bind=ctrl-u:half-page-up
  --bind=ctrl-t:toggle+down
  --bind=ctrl-b:toggle+up
  --bind=ctrl-g:select-all+accept \
  "

ZSH_DISABLE_COMPFIX="true"

PATH=$PATH:$HOME/bin

PATH=$PATH:/bin
PATH=$PATH:/sbin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/bin
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/sbin
PATH=$PATH:~/.local/bin

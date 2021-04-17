# ignore dupe hist entries
setopt hist_ignore_all_dups

# S-tab = backwards completion option
bindkey '^[[Z' reverse-menu-complete

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# mercurial prompt (slows stuff down)
prompt_hg() {}


# set theme to agnoster
source ~/.zsh/themes/agnoster.zsh-theme

# ignore dupe hist entries
setopt hist_ignore_all_dups

# S-tab = backwards completion option
bindkey '^[[Z' reverse-menu-complete

# mercurial prompt (slows stuff down)
prompt_hg() {}

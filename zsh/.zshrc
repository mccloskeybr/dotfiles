source ~/.zsh/exports.zsh
source ~/.zsh/plugins.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/settings.zsh

if [ -f ~/.zsh/local.zsh ]; then
    source ~/.zsh/local.zsh
fi

source startup.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zplug
# =====
source ~/.zplug/init.zsh

zplug "lib/completion", from:oh-my-zsh # [tab] squares
zplug "lib/directories", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/python", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/debian", from:oh-my-zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2      # syntax highlighting on CLI
zplug "zsh-users/zsh-autosuggestions"                   # cmd autocomplete
zplug "djui/alias-tips"                                 # reminds you aliases exist
zplug "b4b4r07/enhancd", use:init.sh                    # fuzzy search for cd

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

# Oh-My-Zsh plugins
# =================
source $ZSH/oh-my-zsh.sh

# Custom plugins
# ==============
# Sqlite support for history
# requires sqlite3
# use drewis/go-histdbimport to import existing history
source ~/.oh-my-zsh/custom/plugins/zsh-histdb/sqlite-history.zsh
autoload -Uz add-zsh-hook


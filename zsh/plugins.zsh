# zplug
# =====
source ~/.zplug/init.zsh

zplug "lib/completion", from:oh-my-zsh # [tab] squares
zplug "lib/directories", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/python", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh                 # extract compressed files
zplug "plugins/command-not-found", from:oh-my-zsh       # suggest where missing cmd is
zplug "plugins/colorize", from:oh-my-zsh                # syntax highlight on cat
zplug "zsh-users/zsh-syntax-highlighting", defer:2      # syntax highlighting on CLI
zplug "zsh-users/zsh-autosuggestions"                   # cmd autocomplete
zplug "djui/alias-tips"                                 # reminds you aliases exist
zplug "b4b4r07/enhancd", use:init.sh                    # fuzzy search for cd
zplug "tom-auger/cmdtime"                               # show cmd exec times

# install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# Overview

my dotfiles.

designed for linux but also works on osx with minor tweaks.

incl config files for:

*   zsh
*   nvim
*   tmux
*   mercurial (hg)
*   i3
*   alacritty
*   gnome-terminal
*   iterm2

![example](/screenshot.png)

# Install

just run the install shell script.

```
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/mccloskeybr/dotfiles/main/bin/dotfiles_install.sh | sh
```

To update the repo given a new set of dotfiles:

```
sh dotfiles_update.sh
```

Also need to install:

*   sqlite3 (zsh, histdb)

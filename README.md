# Overview

my dotfiles.

these should be configured (or configurable) for mac osx and debian.

incl config files for:

*   zsh
*   vim
*   tmux
*   mercurial (hg)
*   i3
*   alacritty
*   gnome-terminal
*   iterm2

![example](/picture.png)

# Install

just run the install shell script.

```
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/mccloskeybr/dotfiles/main/bin/dotfiles_install.sh | sh
```

To update the repo given a new set of dotfiles:

```
sh update.sh
```

Also need to install:

*   sqlite3 (zsh, histdb)

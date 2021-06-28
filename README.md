my dotfiles. i work on OSX and ssh into linux. just run the install shell
script.

```
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/mccloskeybr/dotfiles/main/bin/dotfiles_install.sh | sh
```

To update the repo given a new set of dotfiles:

```
sh update.sh
```

Also need to install (todo, include in auto-installer):

*   ctags (vim, TagBar)
*   sqlite3 (zsh, histdb)
*   pygmentize (zsh, colorize)

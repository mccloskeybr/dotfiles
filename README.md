my dotfiles, primarily for OSX but should also work on linux. just run the
install shell script.

```
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/mccloskeybr/dotfiles/main/install.sh | sh
```

To update the repo given a new set of dotfiles:

```
cd ~/.dotfiles; sh update.sh
```

Also need to install (todo, include in auto-installer):

*   ctags (vim, TagBar)
*   sqlite3 (zsh, histdb)

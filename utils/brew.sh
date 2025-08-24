#!/bin/bash

b() {
  if [[ $1 == "install" ]]; then
    shift
    brew install "$@"
  elif [[ $1 == "uninstall" ]]; then
    shift
    brew uninstall "$@"
  else
    echo "Usage: b install|uninstall <package>"
    return 1
  fi
  rm -f ~/dotfiles/Brewfile
  brew bundle dump --file=~/dotfiles/Brewfile
}

alias binstall="b install"
alias buninstall="b uninstall"

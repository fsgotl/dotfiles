#!/bin/bash

set -e
set -u

setup() {
  dotfiles=$HOME/.dotfiles

  
  has () {
    type "$1" > /dev/null 2>&1
  }

  symlink() {
    [ -e "$2" ] || ln -s "$1" "$2"
  }

  if [ -d "$dotfiles" ]; then
    (cd "$dotfiles" && git pull --rebase)
  else
    git clone https://github.com/fsgotl/dotfiles "$dotfiles"
  fi

  #for f in .??*
 
  for f in `ls -A1 $dotfiles`
  do
    [[ "$f" == ".git" ]] && continue
    #[[ "$f" == "." ]] && continue
  
    #echo "$f"
    ln -s "$dotfiles/$f" ~/"$f"
  
  
  done
}

setup


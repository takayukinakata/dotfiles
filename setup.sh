#!/bin/bash

DOT_FILES=(.bash_profile .bashrc .gitconfig .gitignore_global .git-completion.bash .emacs.d .zshrc )

for file in ${DOT_FILES[@]}
do
  ln -sf $HOME/dotfiles/$file $HOME/$file
done

#!/bin/bash

DOT_FILES=(.bash_profile .bashrc .gitconfig .git-completion.bash .emacs .emacs.d .tmux.conf)

for file in ${DOT_FILES[@]}
do
  ln -sf $HOME/dotfiles/$file $HOME/$file
done

#!/bin/bash

function git_clone_with_alias() {
    path=$1
    git clone $path
    tmp=${path##*/}
    dir_name=${tmp%.*}
    which -s $dir_name || echo "alias $dir_name='cd `pwd`/$dir_name'" >> $DOTFILES_DIR/alias.zsh
}

git_clone_with_alias $1
source $DOTFILES_DIR/alias.zsh

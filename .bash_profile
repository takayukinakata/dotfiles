export PATH="$HOME/.rbenv/bin:$PATH"
export PS1="\W t-nakata$ "
export LSCOLORS=gxfxcxdxbxegedabagacad # default: exfxcxdxbxegedabagacad

source ~/.git-completion.bash

eval "$(rbenv init -)"

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

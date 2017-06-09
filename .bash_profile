export PATH="$HOME/.rbenv/bin:$PATH"
export PS1="\W t-nakata$ "

source ~/.git-completion.bash

eval "$(rbenv init -)"

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

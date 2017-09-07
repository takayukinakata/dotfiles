export PS1="[\W tnakata]$ "
export LSCOLORS=gxfxcxdxbxegedabagacad # default: exfxcxdxbxegedabagacad
export GOPATH=$HOME/dev/go-workspace

# history
HISTSIZE=5000
HISTFILESIZE=5000
HISTCONTROL=ignoreboth # set both ignoredups and ignorespace
HISTIGNORE=history # not remember this command

source ~/.git-completion.bash

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

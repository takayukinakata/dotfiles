# terminal
export PS1="[\W tnakata]$ "
export LSCOLORS=gxfxcxdxbxegedabagacad # default: exfxcxdxbxegedabagacad

# history
HISTSIZE=5000
HISTFILESIZE=5000
HISTCONTROL=ignoreboth # set both ignoredups and ignorespace
HISTIGNORE=history # not remember this command

# git
source ~/.git-completion.bash

# GO
export GOPATH=$HOME/dev/go-workspace
export PATH="$GOPATH/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# goenv
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

export PATH="$HOME/.cargo/bin:$PATH"

# ls
alias ll='ls -lahG'
# grep
alias grep='grep --color=auto'
# git
alias g='git'
alias gbd="git branch --merged | grep -v '*' | xargs git branch -d"
alias gpo="git checkout master && git pull origin && gbd"
alias -g B='`g b | fzf --reverse | sed -e "s/^\*[ ]*//g"`'
# gtags
alias gtagsupd="gtags -v -i --gtagslabel=pygments --debug --explain"
# emacs
alias e='emacs'
# fzf
alias fzf='fzf -m --reverse'
# vagrant
alias vu='vagrant up'
alias vh='vagrant halt'
alias vr='vagrant reload'
alias vs='vagrant ssh'
# docker
alias d='docker'
alias dll='docker container ls'
alias dc='docker-compose'
# tmux
alias tcopy='tmux save-buffer - | reattach-to-user-namespace pbcopy'

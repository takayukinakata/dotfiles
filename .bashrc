# ls
alias ll='ls -lahG'

# grep
alias grep='grep --color=auto'

# git
alias g='git'
alias gbd="git branch --merged | grep -v '*' | xargs git branch -d"

# emacs
alias e='emacs'

# vagrant
alias vu='vagrant up'
alias vh='vagrant halt'
alias vr='vagrant reload'
alias vs='vagrant ssh'

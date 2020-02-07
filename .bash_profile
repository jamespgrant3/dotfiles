alias nv="nvim"
alias bu="~/repos/dotfiles/bu.sh"
alias cls="clear"
alias ds="find . -name \".DS_Store\" -delete"
alias gf="git fetch"
alias gr="git rebase"
alias gbd="git branch -D"
alias gc="git checkout"
alias gcb="git checkout -b"
# see list of used ports for pid
alias ports="lsof -i -n -P | grep TCP"

source ~/.bin/tmuxinator.bash

export EDITOR="nvim"
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/2.6.0/gems/tmuxinator-1.1.1/bin:$PATH"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

export PATH="$PATH:$HOME/apps/nvim-macos/bin"
export PATH="$PATH:$HOME/apps/gh/bin"
export PATH="$PATH:$HOME/apps"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:$HOME/.rvm/bin"

export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"
alias py="$(pyenv which python)"
alias pip="$(pyenv which pip)"

# upgrade neovim
alias vu="cd $HOME/apps && curl -L -o nvim.tar.gz https://github.com/neovim/neovim/releases/download/stable/nvim-macos.tar.gz && tar xzf nvim.tar.gz && rm nvim.tar.gz"

# use vim on the command-line
set -o vi

export EDITOR="nvim"
#export PROMPT='%m:%~$ '
#export PROMPT="%F{green}%*%f:%F{magenta}%~%f %% "
export PROMPT="%~%f %% "

alias nv="nvim"
alias vi="nvim"
alias tx="tmuxinator"

# see list of used ports for pid
alias ports="lsof -i -n -P | grep TCP"

# recursively delete .DS_Store files
alias ds="find . -name \".DS_Store\" -delete"
alias ll="ls -aflh"
alias tr="git log --graph --pretty=oneline --abbrev-commit"
alias ..="cd .."
# show more history
alias history="history 1"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

complete -C '/usr/local/bin/aws_completer' aws

# worktree add
# $1 worktree/branch name
# $2 remote branch
wa(){
  git worktree add --track -b $1 $1 $2
}

# worktree remove
# $1 worktree name
wr(){
  echo "deleting worktree"
  git worktree remove $1

  echo "deleting branch"
  git branch -D $1
}

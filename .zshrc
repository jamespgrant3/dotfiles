export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.pyenv/bin"

# pyenv is installed by cloning pyenv repo, see https://github.com/pyenv/pyenv#basic-github-checkout
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"
alias py="$(pyenv which python3)"
alias pip="$(pyenv which pip3)"

alias ts="$HOME/repos/dotfiles/master/tmux-sessionizer"

# working with git worktrees doesn't always set the remote, this does
alias setremote="git config remote.origin.fetch \"+refs/heads/*:refs/remotes/origin/*\""

# use vim on the command-line
set -o vi

export EDITOR="nvim"
#export PROMPT='%m:%~$ '
#export PROMPT="%F{green}%*%f:%F{magenta}%~%f %% "
export PROMPT="%~%f %% "

alias who="aws sts get-caller-identity"

alias n="nvim"
alias vi="nvim"
alias tx="tmuxinator"
alias bu="brew upgrade"
alias lg="lazygit"

# see session files saved by tmux-resurrect
alias txr="cd $HOME/.local/share/tmux/resurrect"

# see list of used ports for pid
alias ports="lsof -i -n -P | grep TCP"

# recursively delete .DS_Store files
alias ds="find . -name \".DS_Store\" -delete"

alias ll="ls -aflh"
alias tr="git log --graph --pretty=oneline --abbrev-commit"
alias ..="cd .."
# show more history
alias history="history 1"

# reloads
alias so="source $HOME/.zshrc"
alias sop="source $HOME/.zprofile"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

complete -C '/usr/local/bin/aws_completer' aws

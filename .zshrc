export PATH="$PATH:$HOME/apps"
export PATH="$PATH:$HOME/apps/nvim-macos/bin"
export PATH="$PATH:$HOME/apps/gh/bin"
export PATH="$PATH:$HOME/apps/lua"
export PATH="$PATH:$HOME/apps/lua-language-server/bin"
export PATH="$PATH:$HOME/apps/op"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.pyenv/bin"
#export PATH="$PATH:$HOME/.cargo/bin"

# pyenv is installed by cloning pyenv repo, see https://github.com/pyenv/pyenv#basic-github-checkout
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"
alias py="$(pyenv which python)"
alias pip="$(pyenv which pip)"

alias ts="$HOME/repos/dotfiles/master/tmux-sessionizer"

# upgrade neovim
alias vu="cd $HOME/apps && curl -L -o nvim.tar.gz https://github.com/neovim/neovim/releases/download/stable/nvim-macos.tar.gz && tar xzf nvim.tar.gz && rm nvim.tar.gz"

# working with git worktrees doesn't always set the remote, this does
alias setremote="git config remote.origin.fetch \"+refs/heads/*:refs/remotes/origin/*\""

alias k="kubectl"

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

complete -C '/usr/local/bin/aws_completer' aws

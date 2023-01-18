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

# jekyll
export JEKYLL_VERSION=4.2.0
alias jb="docker run --rm --volume='$PWD:/srv/jekyll' -it jekyll/jekyll:$JEKYLL_VERSION jekyll build"
alias jh="docker run --rm --volume='$PWD:/srv/jekyll' -p 4000:4000 -it jekyll/jekyll:$JEKYLL_VERSION jekyll serve --help"
alias jsd="docker run --rm --volume='$PWD:/srv/jekyll' -p 4000:4000 -it jekyll/jekyll:$JEKYLL_VERSION jekyll serve -w -l -D"
alias js="docker run --rm --volume='/Users/james/repos/blog:/srv/jekyll' -p 4000:4000 -it jekyll/jekyll:$JEKYLL_VERSION jekyll serve -w -l"
# end jekyll

alias bu="aws s3 sync '/Volumes/Seagate Backup Plus Drive/Crashplan' s3://james-external-backup"

export EDITOR="nvim"
#export PROMPT='%m:%~$ '
export PROMPT="%F{green}%*%f:%F{magenta}%~%f %% "

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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

complete -C '/usr/local/bin/aws_completer' aws

# blog shortcuts
newpost() {
  py new-post.py --layout post --file $1 --tags $2 --title $3
}
# end blog shortcuts

#export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/apps/nvim-osx64/bin/:$HOME/apps/:$PATH"

# ignore some files
#export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

#alias nv="nvim"
#alias mux="tmuxinator"

# see list of used ports for pid
#alias ports="lsof -i -n -P | grep TCP"

# recursively delete .DS_Store files
#alias ds="find . -name \".DS_Store\" -delete"

#autoload -Uz compinit
#compinit

#source ~/.awsrc
export PATH="$PATH:$HOME/.yarn/bin"
export PATH="$PATH:$HOME/.config/yarn/global/node_modules/.bin"
export PATH="$PATH:$HOME/apps/nvim-osx64/bin/"
export PATH="$PATH:$HOME/apps/"
export PATH="$PATH:$HOME/apps/minikube/"
export PATH="$PATH:$HOME/apps/gh/bin/"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:$HOME/.rbenv/bin"
export PATH="$PATH:/usr/local/opt/libpq/bin"
export PATH="$PATH:$HOME/repos/clients/expr/scripts"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/apps/kind"
# go install directory
export PATH="$PATH:$HOME/go/bin"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
alias py="$(pyenv which python)"
alias pip="$(pyenv which pip)"

#export KUBECONFIG=$HOME/.kube/awsconfig

# use vim on the command-line
set -o vi

# jekyll
export JEKYLL_VERSION=latest

alias jb="docker run --rm --volume='$PWD:/srv/jekyll' -it jekyll/jekyll:$JEKYLL_VERSION jekyll build"
alias jh="docker run --rm --volume='$PWD:/srv/jekyll' -p 4000:4000 -it jekyll/jekyll:$JEKYLL_VERSION jekyll serve --help"
alias jsd="docker run --rm --volume='$PWD:/srv/jekyll' -p 4000:4000 -it jekyll/jekyll:$JEKYLL_VERSION jekyll serve -w -l -D"
alias js="docker run --rm --volume='/Users/jamesgrant/repos/blog:/srv/jekyll' -p 4000:4000 -it jekyll/jekyll:$JEKYLL_VERSION jekyll serve -w -l"
# end jekyll

export EDITOR="nvim"
#export PROMPT='%m:%~$ '
export PROMPT="%F{green}%*%f:%F{magenta}%~%f %% "
export GITHUB_TOKEN="a1a8d84801d6ba648ca9314d9fe1cb5867d80c9a"

# ignore some files
export FZF_DEFAULT_COMMAND='ag --hidden --ignore node_modules .git -g ""'

alias nv="nvim"
alias tx="tmuxinator"
alias npm="pnpm"

# see list of used ports for pid
alias ports="lsof -i -n -P | grep TCP"

# recursively delete .DS_Store files
alias ds="find . -name \".DS_Store\" -delete"
alias ll="ls -aflh"
alias tr="git log --graph --pretty=oneline --abbrev-commit"
alias ..="cd .."

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
compinit

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

complete -C '/usr/local/bin/aws_completer' aws

# blog shortcuts
newpost() {
  py new-post.py --layout post --file $1 --tags $2 --title $3
}
# end blog shortcuts

eval "$(rbenv init - zsh)"

source ~/.awsrc
source ~/.exprrc

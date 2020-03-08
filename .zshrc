export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/apps/nvim-osx64/bin/:$HOME/apps/:$PATH"
export EDITOR="nvim"

# ignore some files
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

alias nv="nvim"
alias mux="tmuxinator"

# see list of used ports for pid
alias ports="lsof -i -n -P | grep TCP"

# recursively delete .DS_Store files
alias ds="find . -name \".DS_Store\" -delete"

autoload -Uz compinit
compinit

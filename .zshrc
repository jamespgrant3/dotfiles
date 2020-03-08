export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/apps/nvim-osx64/bin/:$HOME/apps/:$PATH"
export AWS_ACCESS_KEY_ID="AKIA2247ZI625NKEVY5S"
export AWS_SECRET_ACCESS_KEY="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"
export EDITOR="nvim"

# Parker Clark

export DB_HOST="localhost"
export DB_PORT="5432"
export DB_USER="parker_clark"
export DB_PASSWORD="dashboard-password"
export DB_DATABASE="dashboard"

# end Parker Clark

# ignore some files
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

alias nv="nvim"
alias mux="tmuxinator"

# see list of used ports for pid
alias ports="lsof -i -n -P | grep TCP"

# recursively delete .DS_Store files
alias ds="find . -name \".DS_Store\" -delete"
alias vimrc="nv ~/.config/nvim/init.vim"

autoload -Uz compinit
compinit

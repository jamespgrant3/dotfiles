source $HOME/repos/dotfiles/master/.credentials

export PATH="$PATH:$HOME/apps"
export PATH="$PATH:$HOME/apps/colima"
export PATH="$PATH:$HOME/apps/docker"
export PATH="$PATH:$HOME/apps/lazygit"
export PATH="$PATH:/usr/local/bin"

export AWS_DEFAULT_REGION=us-east-1

# ollama
export OLLAMA_COMPUTE=cpu
export GGML_METAL=0

# set default config home
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DATA_HOME="$HOME/.local/share"

alias lg="lazygit"
alias ld="lazydocker"
alias k="kubectl"
alias k9="k9s"
alias ti="terraform init"
alias ta="terraform apply"
alias tp="terraform plan"
alias y="yazi"
alias m="multipass"

aws_creds() {
  export AWS_ACCESS_KEY_ID=$1
  export AWS_SECRET_ACCESS_KEY=$2
}

# create pull request with title
# $1 title
# $2 base branch
# $3 body
# $4 label
crpr() {
  gh pr create \
  -t $1 \
  -r "jamespgrant3/pull-request-approvers" \
  -a "@me" \
  -B $2 \
  -b $3 \
  -l $4
}

# create pull request
# $1 base branch
# $2 body
cpr() {
  gh pr create \
  -t $(git symbolic-ref --short HEAD) \
  -r "jamespgrant3/pull-request-approvers" \
  -a "@me" \
  -B $1 \
  -b $2
}

# create pull request draft
# $1 base branch
# $2 body
cprd() {
  gh pr create \
  -t $(git symbolic-ref --short HEAD) \
  -r "jamespgrant3/pull-request-approvers" \
  -a "@me" \
  -B $1 \
  -b $2 \
  --draft
}

alias sync="aws s3 sync '/Volumes/Seagate Backup Plus Drive/external' s3://james-external-backup"

export AWS_DEFAULT_REGION=us-east-1
export AWS_DEFAULT_OUTPUT=json

1pw(){
  eval $(op signin)
}

co(){
  colima start --cpu 2 --memory 16 --disk 20
}

# worktree add
# $1 branch name
# $2 repo
# $3 origin
# example gwa my-branch dotfiles master
gwa(){
  echo "creating worktree"
  git worktree add --no-track -b $1 $HOME/repos/$2/$1 origin/$3
}

gwr(){
  echo "deleting worktree"
  git worktree remove $1

  git branch -D $1
}

gwl(){
  git worktree list --porcelain
}

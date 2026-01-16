source $HOME/r/dotfiles/master/.credentials

export PATH="$PATH:$HOME/apps"
export PATH="$PATH:$HOME/apps/colima"
export PATH="$PATH:$HOME/apps/docker"
export PATH="$PATH:$HOME/apps/lazygit"
export PATH="$PATH:/usr/local/bin"

export AWS_DEFAULT_REGION=us-east-1
export AWS_DEFAULT_OUTPUT=json

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
alias sync="aws s3 sync '/Volumes/Seagate Backup Plus Drive/external' s3://james-external-backup"
alias ai="claude"

1pw(){
  eval $(op signin)
}

c(){
  colima start --cpu 2 --memory 16 --disk 20
}

cs(){
  colima stop
}

# d = dispay
d() {
    local config="$HOME/.config/alacritty/alacritty.toml"
    [[ -L "$config" ]] && config=$(readlink "$config")

    # l = laptop
    # d = desktop

    case "$1" in
        l|d)
            awk -v mode="$1" '
                /^#? ?size = [0-9]+/ {
                    count++
                    if (mode == "l") {
                        if (count == 1) sub(/^# /, "")
                        if (count == 2 && !/^#/) $0 = "# " $0
                    } else {
                        if (count == 1 && !/^#/) $0 = "# " $0
                        if (count == 2) sub(/^# /, "")
                    }
                }
                { print }
            ' "$config" > "$config.tmp" && mv "$config.tmp" "$config"
            ;;
        *)
            echo "Usage: display {laptop|desktop}"
            return 1
            ;;
    esac
}

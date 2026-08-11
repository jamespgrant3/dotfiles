#!/bin/bash
# run this from within the repo directory

# Setup git
ln -s $HOME/r/dotfiles/.gitconfig $HOME/.gitconfig

ln -s $HOME/r/nvim $HOME/.config/nvim

ln -s $HOME/r/dotfiles/.tmux.conf $HOME/.tmux.conf

ln -s $HOME/r/dotfiles/.zshrc $HOME/.zshrc

ln -s $HOME/r/dotfiles/.zprofile $HOME/.zprofile

ln -s $HOME/r/dotfiles/.client $HOME/.client

ln -s $HOME/r/dotfiles/.credentials $HOME/.credentials

# lazygit
mkdir -p /Users/james/.config/lazygit
ln -s $HOME/r/dotfiles/.config/lazygit/config.yml $HOME/.config/lazygit/config.yml

# lazydocker
mkdir -p /Users/james/.config/lazydocker
ln -s $HOME/r/dotfiles/.config/lazydocker/config.yml $HOME/.config/lazydocker/config.yml

# aerospace
mkdir -p /Users/james/.config/aerospace
ln -s $HOME/r/dotfiles/.config/aerospace/aerospace.toml $HOME/.config/aerospace/aerospace.toml

# alacritty
mkdir -p /Users/james/.config/alacritty
ln -s $HOME/r/dotfiles/.config/alacritty/alacritty.toml $HOME/.config/alacritty/alacritty.toml
ln -s $HOME/r/dotfiles/.config/alacritty/themes $HOME/.config/alacritty/themes

#herdr
# install herdr
ln -s $HOME/r/dotfiles/.config/herdr/config.toml $HOME/.config/herdr/config.toml

# install herdr-plugin-workspace-manager: https://github.com/razajamil/herdr-plugin-workspace-manager
ln -s $HOME/r/dotfiles/.config/herdr/plugins/config/herdr-plugin-workspace-manager/config.yml $HOME/.config/herdr/plugins/config/herdr-plugin-workspace-manager/config.yml

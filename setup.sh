#!/bin/bash
# run this from within the repo directory

# Setup git
ln -s $HOME/r/dotfiles/master/.gitconfig $HOME/.gitconfig

ln -s $HOME/r/nvim-lua/master $HOME/.config/nvim

ln -s $HOME/r/dotfiles/master/.tmux.conf $HOME/.tmux.conf

ln -s $HOME/r/dotfiles/master/.zshrc $HOME/.zshrc

ln -s $HOME/r/dotfiles/master/.zprofile $HOME/.zprofile

ln -s $HOME/r/dotfiles/master/.client $HOME/.client

# lazygit
mkdir -p /Users/james/.config/lazygit
ln -s $HOME/r/dotfiles/master/.config/lazygit/config.yml $HOME/.config/lazygit/config.yml

# lazydocker
mkdir -p /Users/james/.config/lazydocker
ln -s $HOME/r/dotfiles/master/.config/lazydocker/config.yml $HOME/.config/lazydocker/config.yml

# yazi - file explorer
ln -s $HOME/r/dotfiles/master/.config/yazi $HOME/.config/yazi

# aerospace
mkdir -p /Users/james/.config/aerospace
ln -s $HOME/r/dotfiles/master/.config/aerospace/aerospace.toml $HOME/.config/aerospace/aerospace.toml

# alacritty
mkdir -p /Users/james/.config/alacritty
ln -s $HOME/r/dotfiles/master/.config/alacritty/alacritty.toml $HOME/.config/alacritty/alacritty.toml
ln -s $HOME/r/dotfiles/master/.config/alacritty/themes $HOME/.config/alacritty/themes

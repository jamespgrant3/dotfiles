#!/bin/bash
# run this from within the repo directory

# Setup git
ln -s $HOME/repos/dotfiles/master/.gitconfig $HOME/.gitconfig

# Setup vim
mkdir -p $HOME/.config/nvim
ln -s $HOME/repos/nvim-lua/master $HOME/.config/nvim

ln -s $HOME/repos/dotfiles/master/.vimrc $HOME/.vimrc

ln -s $HOME/repos/dotfiles/master/.tmux.conf $HOME/.tmux.conf

ln -s $HOME/repos/dotfiles/master/.zshrc $HOME/.zshrc

ln -s $HOME/repos/dotfiles/master/.personal-zshrc $HOME/.personal-zshrc

ln -s $HOME/repos/dotfiles/master/.client $HOME/.client

# window tooling
ln -s $HOME/repos/dotfiles/master/.skhdrc $HOME/.skhdrc
ln -s $HOME/repos/dotfiles/master/.yabairc $HOME/.yabairc

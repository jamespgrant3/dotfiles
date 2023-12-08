#!/bin/bash
# run this from within the repo directory

# Setup git
ln -s `pwd`/master/.gitconfig $HOME/.gitconfig

# Setup vim
mkdir -p $HOME/.config/nvim
ln -s `pwd`/master $HOME/.config/nvim

ln -s `pwd`/master/.vimrc $HOME/.vimrc

ln -s `pwd`/master/.tmux.conf $HOME/.tmux.conf

ln -s `pwd`/master/.zshrc $HOME/.zshrc

ln -s `pwd`/master/.personal-zshrc $HOME/.personal-zshrc

ln -s `pwd`/master/.client $HOME/.client

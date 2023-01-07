#!/bin/bash

# Setup git
ln -sf `pwd`/.gitconfig $HOME/.gitconfig

# Setup vim
ln -sf `pwd`/.vimrc $HOME/.vimrc
ln -sf `pwd`/.zshrc $HOME/.zshrc
ln -sf `pwd`/init.vim $HOME/.config/nvim/init.vim
ln -sf `pwd`/coc.nvim/coc-settings.json $HOME/.config/nvim/coc-settings.json
mkdir -p $HOME/.config/coc/extensions
ln -sf `pwd`/coc.nvim/extensions/package.json $HOME/.config/coc/extensions/package.json
ln -sf `pwd`/coc.nvim/extensions/yarn.lock $HOME/.config/coc/extensions/yarn.lock

ln -sf `pwd`/.tmux.conf $HOME/.tmux.conf

ln -sf `pwd`/.bashrc $HOME/.bashrc-custom
echo "source $HOME/.bashrc-custom" >> $HOME/.bashrc

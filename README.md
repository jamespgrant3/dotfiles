## Notes
All dotfiles are referenced in `~/` using a symlink to the dotfiles repository. This allows for the files to appear in the appropriate place, but managed in a git repo.

```sh
# create symlink
ln -s ~/repos/dotfiles/.awsrc ~/.awsrc
```

```sh
# view symlinks
ls -la
```

```sh
# current symlinks
ln -s $HOME/repos/dotfiles/.awsrc ~/.awsrc
ln -s $HOME/repos/dotfiles/.bashrc-custom ~/.bashrc
ln -s $HOME/repos/dotfiles/.gitconfig ~/.gitconfig
ln -s $HOME/repos/dotfiles/.tmux.conf ~/.tmux.conf
ln -s $HOME/repos/dotfiles/.vimrc ~/.vimrc
ln -s $HOME/repos/dotfiles/.zshrc ~/.zshrc
ln -s $HOME/repos/dotfiles/init.vim ~/.config/nvim/init.vim
ln -s $HOME/repos/dotfiles/coc.nvim/coc-settings.json ~/.config/nvim/coc-settings.json
```

`.awsrc` holds credentials BUT is git ignored.

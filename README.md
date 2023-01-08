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
ln -s $HOME/repos/dotfiles/.gitconfig ~/.gitconfig
ln -s $HOME/repos/dotfiles/.tmux.conf ~/.tmux.conf
ln -s $HOME/repos/dotfiles/.zshrc ~/.zshrc
```

`.awsrc` holds credentials BUT is git ignored.

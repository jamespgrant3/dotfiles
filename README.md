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

`.awsrc` holds credentials BUT is git ignored.

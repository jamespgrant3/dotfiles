vim configuration is now lua-based, see [here](https://github.com/jamespgrant3/nvim-lua)

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

`.credentials` holds credentials BUT is git ignored.

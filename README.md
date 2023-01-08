## Setup Instructions
- clone repo
- run setup.sh
  - ensure path in setup.sh is accurate
  - `chmod +x ./setup.sh`
  - execute setup script to symlink nvim folder
- install a plugin manager
  - [packer](https://github.com/wbthomason/packer.nvim)
  - open packer.lua
  - `:PackerSync`

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

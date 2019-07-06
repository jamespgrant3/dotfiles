cp ~/.zshrc ~/repos/dotfiles/.zshrc
cp ~/.vimrc ~/repos/dotfiles/.vimrc 
cp ~/.tmux.conf ~/repos/dotfiles/.tmux.conf
cp ~/.bash_profile ~/repos/dotfiles/bash_profile
cp ~/.config/coc/extensions/package.json ~/repos/dotfiles/coc_package.json
cp ~/.config/tmuxinator/ ~/repos/dotfiles/
git add .
git commit
git push

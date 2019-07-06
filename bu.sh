cp ~/.zshrc ~/repos/dotfiles/.zshrc
cp ~/.bashrc ~/repos/dotfiles/.bashrc
cp ~/.gitconfig ~/repos/dotfiles/git/.gitconfig
cp ~/.vimrc ~/repos/dotfiles/.vimrc 
cp ~/.tmux.conf ~/repos/dotfiles/.tmux.conf
cp ~/.bash_profile ~/repos/dotfiles/bash_profile
cp ~/.vim/coc-settings.json ~/repos/dotfiles/coc/coc-settings.json
cp ~/.config/coc/extensions/package.json ~/repos/dotfiles/coc/extensions/package.json
cp -a ~/.config/tmuxinator/. ~/repos/dotfiles/tmuxinator/
git add .
git commit
git push

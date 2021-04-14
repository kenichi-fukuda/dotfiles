#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
ln -sf $(pwd)/.vimrc $HOME/.vimrc
ln -sf $(pwd)/.zshrc $HOME/.zshrc
mkdir -p $HOME/.config/nvim
ln -sf $(pwd)/.vimrc $HOME/.config/nvim/init.vim
brew bundle
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/dein.vim

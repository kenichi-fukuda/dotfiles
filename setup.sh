#!/bin/sh

#backup dir
mkdir -p $HOME/.vim/swap
mkdir -p $HOME/.vim/backup
mkdir -p $HOME/.vim/colors

# neobundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
git clone https://github.com/Shougo/vimproc $HOME/.vim/bundle/vimproc

# vundle
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/vundle

# oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

#color scheme
mkdir $HOME/vimColorScheme
git clone https://github.com/altercation/solarized.git $HOME/vimColorScheme/solarized
ln -s $HOME/vimColorScheme/solarized/vim-colors-solarized/colors/solarized.vim $HOME/.vim/colors/solarized.vim
git clone https://github.com/tomasr/molokai.git $HOME/vimColorScheme/molokai
ln -s $HOME/vimColorScheme/molokai/colors/molokai.vim $HOME/.vim/colors/molokai.vim


#create symlink
rm -rf $HOME/.vimrc
rm -rf $HOME/.zshrc
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc

#shell change
chsh -s /bin/zsh

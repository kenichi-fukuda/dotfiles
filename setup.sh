#!/bin/sh

#backup dir
mkdir -p $HOME/.vim/swap
mkdir -p $HOME/.vim/backup

# neobundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
git clone https://github.com/Shougo/vimproc $HOME/.vim/bundle/vimproc

# vundle
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/vundle

# oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

#create symlink
rm -rf $HOME/.vimrc
rm -rf $HOME/.zshrc
rm -rf $HOME/.bashrc
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/.bashrc $HOME/.zshrc

#shell change
chsh -s /bin/zsh

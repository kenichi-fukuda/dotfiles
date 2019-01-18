#!/usr/bin/env bash

# oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

mkdir -p \
    $HOME/.vim/vim-ref/cache \
    $HOME/.vim/tags \
    $HOME/.vim/phpCsFixer/ \
    $HOME/.vim/neosnippet.vim \
    $HOME/.vim/neocomplete.vim \
    $HOME/.vim/dict \
    $HOME/.vim/swap \
    $HOME/.vim/backup

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh $HOME/.vim/dein.vim

# create symlink
rm -rf $HOME/.vimrc
rm -rf $HOME/.zshrc
rm -rf $HOME/.bashrc
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/.bashrc $HOME/.bashrc

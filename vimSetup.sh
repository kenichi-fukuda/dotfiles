#!/usr/bin/env bash

mkdir -p \
    $HOME/.vim/vim-ref/cache \
    $HOME/.vim/tags \
    $HOME/.vim/phpCsFixer/ \
    $HOME/.vim/neosnippet.vim \
    $HOME/.vim/neocomplete.vim \
    $HOME/.vim/dict

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh .vim/dein.vim

wget http://jp2.php.net/distributions/manual/php_manual_ja.tar.gz
tar -zxvf php_manual_ja.tar.gz -C $HOME/.vim/vim-ref
rm -rf php_manual_ja.tar.gz

composer global require jetbrains/phpstorm-stubs:dev-master
composer global require friendsofphp/php-cs-fixer

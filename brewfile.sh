#!/bin/sh# update Homebrew
brew update

# Update formula
brew upgrade

# Add Repository
brew tap phinze/homebrew-cask
brew tap sanemat/font
brew tap homebrew/science
brew tap caskroom/fonts

# build or install
brew install git
brew install tig
brew install openssl
brew install wget
brew install ruby
brew install zsh
brew install ricty
brew install brew-cask
brew install cscope
brew install lua
brew install luajit
brew install scala
brew linkapps

# cask install
brew cask install java
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install firefox
brew cask install evernote
brew cask install skype
brew cask install kobito
brew cask install virtualbox
brew cask install vagrant
brew cask install vlc
brew cask install dropbox
brew cask install sublime-text
brew cask install mi
brew cask install iterm2
brew cask install sequel-pro
brew cask install adobe-reader
brew cask install imageoptim
brew cask install keka

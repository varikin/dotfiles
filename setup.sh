#!/bin/bash -e

echo "Installing homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing zsh"
brew install zsh

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing all the things"
brew install vim git go gradle groovy httpie jq lolcat python3 tree watch

echo "Setting up dotfiles"
dash.py


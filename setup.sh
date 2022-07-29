#!/bin/bash -e

echo "Installing homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing zsh"
brew install zsh

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing all the things"
brew install neovim git go gradle groovy httpie jq lolcat python3 tree watch

echo "Setting up dotfiles"
python dash.py

echo "Firefox: https://www.mozilla.org/en-US/firefox/download/thanks/"
echo "Dropbox: https://www.dropbox.com/downloading"
echo "1Password: https://1password.com/downloads/"
echo "Alfred: https://www.alfredapp.com/"
echo "VS Code: https://code.visualstudio.com/"
echo "Docker: https://www.docker.com/products/docker-desktop"
echo "Chrome: https://www.google.com/chrome/"
echo "iTerm2: https://www.iterm2.com/downloads.html"
echo "JetBrains Toolbox: https://www.jetbrains.com/toolbox/app/"
echo "Postman: https://www.getpostman.com/"
echo "Slack: https://slack.com/downloads/osx"


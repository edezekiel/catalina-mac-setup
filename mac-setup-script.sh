#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./mac-setup-script.sh` then `./mac-setup-script.sh`

# HomeBrew
echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Formulae
echo "Installing Formulae from Homebrew"
brew install git
brew install node
brew install amazon-ecs-cli
brew install maven 

# npm 
echo "Installing npm packages"
npm install -g @angular/cli
npm install zsh

# Oh My Zsh
echo "Install Oh My Zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Casks
echo "Installing Casks from Homebrew"
brew cask install slack
brew cask install iterm2
brew cask install zoom
brew cask install sourcetree
brew cask install google-drive-file-stream
brew cask install visual-studio-code
brew cask install adobe-creative-cloud
brew cask install jetbrains-toolbox
brew cask install kitematic
brew cask install google-chrome
brew cask install dropbox
brew cask install spotify
brew cask install notion
brew cask install postman
brew cask install docker

# zsh and vim
echo "Setting up zsh and vim"
touch ~/.zshrc
touch ~/.vimrc
cat ./zshrc > ~/.zshrc
cat ./vimrc > ~/.vimrc
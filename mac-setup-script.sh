#!/bin/sh

# Script for setting up Macs
# To execute: save and `chmod +x ./mac-setup-script.sh` then `./mac-setup-script.sh`

# HomeBrew
echo "Installing brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Formulae
echo "Installing Formulae from Homebrew"
brew install git
brew install amazon-ecs-cli
brew install maven 

# nvm 
echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# node
echo "Installing node"
nvm install node

# npm 
echo "Installing npm packages"
npm install -g typescript
npm install -g @angular/cli
npm install -g prettier
npm install -g npx
npm install -g http-server
npm install -g json-server 

# Casks
echo "Installing Casks from Homebrew"
brew cask install slack
brew cask install zoom
brew cask install spectacle
brew cask install visual-studio-code
brew cask install adobe-creative-cloud
brew cask install jetbrains-toolbox
brew cask install kitematic
brew cask install google-chrome
brew cask install dropbox
brew cask install spotify
brew cask install postman
brew cask install docker
brew cask install sensiblesidebuttons
brew cask install intellij-idea
brew cask install datagrip

# vim
echo "Setting up vim"
touch ~/.vimrc
cat ./vimrc > ~/.vimrc

# git config
echo "Creating sane global git configs"
# ```git branch``` command displays branches in terminal instead of editor. 
git config --global pager.branch false
# sets the default editor to VS Code instead of vim.
git config --global core.editor code -w
# make git diff print to stdout instead of pulling up vim.
git config pager.diff false 

# oh-my-zsh and iTerm2. zsh is installed on Catalina by default.
echo "Setting up iTerm2 and oh-my-zsh"
brew cask install iTerm2
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Installing templace zshrc file"
cat ./zshrc > ~/.zshrc

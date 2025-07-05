#!/bin/zsh

# Set aliases
touch ~/.zprofile
echo alias vim=nvim >> ~/.zprofile
echo alias vim=nvim >> ~/.zprofile

# Install sdkman
curl -s "https://get.sdkman.io" | bash

# Install zim
brew install zim

zimfw install 


# Install useful utlities

brew install lazygit lazydocker neovim

brew install --cask iterm2 raycast

# Install iterm color themes
(
    cd /tmp && \
    git clone git@github.com:mbadolato/iTerm2-Color-Schemes.git && \
    cd iTerm2-Color-Schemes.git && \
    tools/import-scheme.sh schemes/*
)

# Install dev tools
brew install --cask cursor visual-studio-code jetbrains-toolbox


#!/bin/zsh

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install sdkman
curl -s "https://get.sdkman.io" | bash

# Install zim
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

zimfw install

source ~/.zshrc

# Install useful utlities

brew install lazygit lazydocker

brew install --cask iterm2 raycast

# Install iterm color themes
(
    cd /tmp && \
    git clone git@github.com:mbadolato/iTerm2-Color-Schemes.git && \
    cd iTerm2-Color-Schemes.git && \
    tools/import-scheme.sh schemes/* &
)

# Install dev tools
brew install --cask cursor vscode jetbrains-toolbox


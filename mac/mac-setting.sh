#!/bin/bash

# Ask sudo Permission
echo "Enter sudo password: "
sudo -v

# Keep sudo Permission Valid
while true; do sudo -n true; sleep 360; kill -0 "$$" || exit; done 2>/dev/null &

# Install Tools by Homebrew
brew install verilator  \
	     make cmake \
	     lima pyenv pyenv-virtualenv

# Configure Git
git config --global user.email "eric1231.tw@gmail.com"
git config --global user.name "tzuchilin"
curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

# Install Vim Plugin
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install SDK Manager
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Install OpenJDK
sdk install java 11.0.21-tem

# Install sbt
sdk install sbt

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Setting Environment
sudo chmod 700 mac-relink.sh
bash mac-relink.sh

echo "Installation and setup completed!"

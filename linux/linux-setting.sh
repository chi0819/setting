#!/bin/bash

# Ask sudo Permission
echo "Enter sudo password: "
sudo -v

# Keep sudo Permission Valid
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Update & Upgrade Packages Manager
sudo apt update
sudo apt upgrade

# Install Tools by apt
sudo apt install -y verilator tree make cmake vim wget gpg apt-transport-https clang build-essential curl

# Configure Git
git config --global user.email "eric1231.tw@gmail.com"
git config --global user.name "tzuchilin"
curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

# Install Vim Plugin
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install OpenJDK
sudo sh -c 'wget -qO - https://packages.adoptium.net/artifactory/api/gpg/key/public | gpg --dearmor > /etc/apt/trusted.gpg.d/adoptium.gpg'
echo "deb https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | sudo tee /etc/apt/sources.list.d/adoptium.list > /dev/null
sudo apt update
sudo apt install -y temurin-21-jdk

# Install Mill
curl -L https://github.com/com-lihaoyi/mill/releases/download/0.10.15/0.10.15 > mill && chmod +x mill
sudo mv mill /usr/local/bin

# Install Firtool
wget https://github.com/llvm/circt/releases/download/firtool-1.95.1/firrtl-bin-linux-x64.tar.gz
tar -xvzf firrtl-bin-linux-x64.tar.gz
sudo mv firtool-1.95.1/bin/firtool /usr/local/bin
rm -rf fir*

# Install Python Virtual Environment
sudo apt install -y libssl-dev zlib1g-dev libbz2-dev  \
  libreadline-dev libsqlite3-dev llvm libncurses5-dev \
  libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python3-openssl
curl https://pyenv.run | bash
pyenv install 3.12.0

# Setting Environment
sudo chmod 700 linux-relinking.sh
bash linux-relinking.sh

echo "Installation and setup completed!"

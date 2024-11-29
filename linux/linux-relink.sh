#!/bin/bash

echo "Relinking the environment setting files"
rm -f ~/.bashrc
rm -f ~/.profile
rm -f ~/.vimrc

ln ../share/bashrc ~/.bashrc
ln linux-bash_profile ~/.profile
ln ../share/vimrc ~/.vimrc
echo "Relinking Successfully"


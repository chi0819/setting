#!/bin/bash

echo "Relinking the environment setting files"
rm -f ~/.bashrc
rm -f ~/.profile
rm -f ~/.vimrc

ln -s ../share/bashrc ~/.bashrc
ln -s linux-bash_profile ~/.profile
ln -s ../share/vimrc ~/.vimrc
echo "Relinking Successfully"


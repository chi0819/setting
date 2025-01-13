#!/bin/bash

echo "Relinking the environment setting files"
rm -f ~/.bashrc
rm -f ~/.vimrc

ln bashrc ~/.bashrc
ln ../share/vimrc ~/.vimrc
echo "Relinking Successfully"


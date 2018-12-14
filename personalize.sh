#!/bin/bash
##
## configure
##
cp /app/vimrc ~/.vimrc
cp /app/tmux.conf ~/.tmux.conf
cp /app/cscope_maps.vim ~/.cscope_maps.vim
cp -r /app/bash_it ~/.bash_it
source ~/.bash_it/install.sh --silent

git config --global user.name "Bo-Yuan Huang"
git config --global user.email "byhuang1992@gmail.com"


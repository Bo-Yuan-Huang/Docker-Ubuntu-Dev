#!/bin/bash
##
## configure
##
cp /app/vimrc /home/byhuang/.vimrc
cp /app/tmux.conf /home/byhuang/.tmux.conf
cp /app/cscope_maps.vim /home/byhuang/.cscope_maps.vim
cp -r /app/bash_it /home/byhuang/.bash_it

git config --global user.name "Bo-Yuan Huang"
git config --global user.email "byhuang1992@gmail.com"


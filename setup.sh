#!/bin/bash

ROOT=$(pwd)

# tmux
ln -s $ROOT/tmux.conf ~/.tmux.conf

# vim
mkdir -p ~/.vim
ln -s $ROOT/vimrc ~/.vim/vimrc

# ycm_extra_conf
ln -s $ROOT/ycm_extra_conf.py ~/.vim/ycm_extra_conf.py

# vim plugin
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


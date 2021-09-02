#!/bin/sh

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s $(dirname "${BASH_SOURCE[0]}")/vimrc ~/.vimrc

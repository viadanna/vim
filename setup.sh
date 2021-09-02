#!/bin/bash
set -e pipefail

mkdir -p ~/.vim/bundle

if [ -d ~/.vim/bundle/Vundle.vim/ ]; then
  echo ~/.vim/bundle/Vundle.vim already exists
else
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [ -f ~/.vimrc ]; then
  echo ~/.vimrc already exists
else
  ln -s $(dirname "${BASH_SOURCE[0]}")/vimrc ~/.vimrc
fi

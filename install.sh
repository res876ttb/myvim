#!/bin/bash

git clone https://github.com/res876ttb/myvim.git
cd myvim

if [ -f ~/.vimrc ]; then
  rm -rf ~/.vimrc.pre
  mv ~/.vimrc ~/.vimrc.pre
fi
if [ -d ~/.vim ]; then
  rm -rf ~/.vim.pre
  mv ~/.vim ~/.vim.pre
fi
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mv .vimrc ~/

# install plugins
vim +PluginInstall +qall


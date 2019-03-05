#!/bin/bash

git clone https://github.com/res876ttb/myvim.git $HOME/.myvim
cd $HOME/.myvim

if [ -f ~/.vimrc ]; then
  rm -rf ~/.vimrc.pre
  mv ~/.vimrc ~/.vimrc.pre
fi
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/colors
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s $PWD/.vimrc ~/

# install colortheme
cd ..
git clone https://github.com/sickill/vim-monokai.git
mv vim-monokai/colors/monokai.vim ~/.vim/colors/
rm -rf vim-monokai

# install plugins
vim +PluginInstall +qall


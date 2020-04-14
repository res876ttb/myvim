#!/bin/bash

git clone https://github.com/res876ttb/myvim.git $HOME/.myvim
cd $HOME/.myvim

if [ -f ~/.vimrc ]; then
  rm -rf ~/.vimrc.pre
  mv ~/.vimrc ~/.vimrc.pre
fi
mkdir -p ~/.vim/bundle
# mkdir -p ~/.vim/colors
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s $PWD/.vimrc ~/

# install plugins
echo -e '\n' | vim +PluginInstall +qall

# install YouCompleteMe
printf "Install YouCompleteMe? (y/N)"
read x
if [[ "$x" == "y" ]] || [[ "$x" == "yes" ]]; then
  python3 ~/.vim/bundle/YouCompleteMe/install.py
fi


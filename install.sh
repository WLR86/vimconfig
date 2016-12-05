#!/bin/sh

git clone https://github.com/VundleVim/Vundle.vim.git ./bundle/Vundle.vim

cd ..
ln -s vimconfig .vim
ln -s vimconfig/vimrc .vimrc

vim +PluginInstall +qall

sed -i '/^"colorscheme  /s/^"//' .vim/vimrc

echo Done.


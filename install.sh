#!/bin/sh

git clone https://github.com/VundleVim/Vundle.vim.git ./bundle/Vundle.vim

# backup any existing config
mkdir ~/.vimbackup
mv -f ~/.vim* ~/.vimbackup/

ln -s ~/vimconfig ~/.vim
ln -s ~/vimconfig/vimrc ~/.vimrc

vim -c ~/.vim/plugins.vim +PluginInstall +qall

sed -i '/^"colorscheme /s/^"//' ~/.vimrc

echo Done.


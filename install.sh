#!/bin/sh

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ./bundle/Vundle.vim

# Backup any existing config
mkdir -p ~/.VimBackup
mv -f ~/.vim* ~/.VimBackup/

ln -s ~/vimconfig ~/.vim
ln -s ~/vimconfig/vimrc ~/.vimrc

vim -c ~/.vim/plugins.vim +PluginInstall +qall

echo Done.


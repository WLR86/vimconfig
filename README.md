# vimconfig
My personal ViM config

This repo allows me to deploy my ViM env to all my servers/machines

I mostly do LAMP dev and sysadmin tasks on Debian 7/8 servers, so if you think
it might suit your needs too, feel free to clone it :)

*How to install :
1) Clone this repo from your home directory 
2) Rename the vimconfig directory :
<code>$ mv vimconfig .vim</code>
3) Create the .vimrc symlink in your home dir :
<code>$ ln -s .vim/vimrc .vimrc</code>
4) Install Vundle :
<code>git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim</code>
5) run Vim and let Vundle install all other plugins :
<code>:PluginInstall</code>
6) Quit vim and run it again and this everything should be fine

	

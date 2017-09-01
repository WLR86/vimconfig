# vimconfig
My personal ViM config

I'm a ViM lover, although I used and tested a whole bunch of text editors and IDEs, ViM is still my favorite tool.
This repo allows me to deploy my ViM env to all my servers/machines.

I mostly do LAMP dev and sysadmin tasks on Debian 7/8/9 servers, so if you think
it might suit your needs too, feel free to clone it :).

This vimrc works also fine on my Mac, using MacVim and vim on this platform.

Update:
NeoComplete and NeoSnippet are now included
Note that NeoComplete requires vim to be compiled with LUA support - installing vim-nox package takes care of this :
$ sudo apt install vim-nox

## How to install :
1) Clone this repo from your home directory
2) cd to vimconfig
3) run install.sh
4) Done =)

## Custom commands available:

### MakeTags
Invoke ctags in the current directory recursevely to create tags
Tags can then be used with common keys to navigate back and forth
```
command! MakeTags !ctags -R --exclude='*.js' .
```
### TrimWhiteSpace
Seek and delete blank characters at EOL
```
command! TrimWhiteSpaces %s/\s\+$//g
```

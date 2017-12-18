# vimconfig
My personal ViM config

I'm a Vim lover, although I used and tested a whole bunch of text editors and IDEs, ViM is still my favorite tool.
This repo allows me to deploy my ViM env to all my servers/machines.

I mostly do LAMP dev and sysadmin tasks on Debian 7/8/9 servers, so if you think
it might suit your needs too, feel free to clone it :).

This vimrc works also fine on my Mac, using MacVim and vim on this platform.

*Update:*
Deoplete (Neovim), NeoComplete (Vim 8 et Vim 7.4) and NeoSnippet are now included.
Note that NeoComplete requires vim to be compiled with LUA support - installing vim-nox package takes care of this :
```
sudo apt install vim-nox
```

Deoplete requires Python3 and Neovim Python3 module :
```
sudo apt install python3 python3-pip
sudo pip3 install neovim
```

## How to install :
1) Clone this repo from your home directory
2) cd to vimconfig
3) run install.sh
4) Done =)

## Custom keys
- F2: Toggle paste mode
- F3: Set dark mode
- F4: Set light mode
- F5: Previous Buffer
- F6: Next Buffer
- F7: Switch last two Buffers
- F8: Toggle Tagbar
- F9: Toggle dark/light mode
- F12: Redraw Airline
- jj: Quick Retun to Normal Mode from Insert Mode
- ,v: Open .vimrc

## Custom commands available:

### MakeTags
Invoke ctags in the current directory recursevely to create tags for your code : You can then navigate your code jumping from where a method is used to where this method is defined, and back.
```
command! MakeTags !ctags -R --exclude='*.js' .
```
### TrimWhiteSpace
Seek and delete blank characters at EOL
```
command! TrimWhiteSpaces %s/\s\+$//g
```

## Overriding provided config
If something in the config isn't working properly on a given machine, you can override settings by using a file named 'override_vimrc'.
Simply create this file and add the various settings you like to change in it. It will be loaded automatically at startup. The idea here is to have a way to stay synced with this github branch, while preserving the ability to make some per-host modifications if needed/required.

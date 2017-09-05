# vimconfig
My personal ViM config

I'm a ViM lover, although I used and tested a whole bunch of text editors and IDEs, ViM is still my favorite tool.
This repo allows me to deploy my ViM env to all my servers/machines.

I mostly do LAMP dev and sysadmin tasks on Debian 7/8/9 servers, so if you think
it might suit your needs too, feel free to clone it :).

This vimrc works also fine on my Mac, using MacVim and vim on this platform.

Update:
NeoComplete and NeoSnippet are now included. 
Note that NeoComplete requires vim to be compiled with LUA support - installing vim-nox package takes care of this :
```
sudo apt install vim-nox
```

## How to install :
1) Clone this repo from your home directory
2) cd to vimconfig
3) run install.sh
4) Done =)

## Custom keys
F3: Set dark mode
F4: Set light mode
F5: Previous Buffer
F6: Next Buffer
F7: Switch last two Buffers
F8: Toggle Tagbar
F9: Toggle dark/light mode
```
nmap <RightMouse> za
nmap <silent> <F3> :call Dark()<CR>
nmap <silent> <F4> :call Light()<CR>
nmap <silent> <F5> :bp<CR>
nmap <silent> <F6> :bn<CR>
nmap <silent> <F7> :b#<CR>
nmap <silent> <F8> :TagbarToggle<CR>
nmap <silent> <F9> :call ToggleScheme()<CR>
nmap <silent> <F12> :AirlineRefresh<CR>
imap £ ->
cmap w!! w !sudo tee % >/dev/null
```

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

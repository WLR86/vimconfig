set nocompatible
set t_Co=256
filetype off
let php_folding=0

source ~/.vim/plugins.vim

filetype plugin indent on

syntax on
set number
set mouse=a
set background=dark
colorscheme gruvbox



" Vim-Airline Cfg
let g:airline_powerline_fonts = 1
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_theme='dark'

" certain number of spaces are allowed after tabs, but not in between
" this algorithm works well for /** */ style comments in a tab-indented file
let g:airline#extensions#whitespace#mixed_indent_algo = 1

" Syntastic
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

" NERDTree : Open in Tab by default
"let NERDTreeMapOpenInTab='\r'

" Make Airline appear
set laststatus=2

" No spell
set nospell
set nolist
set nocursorline
set noexpandtab
set noet
set ts=4	
set shiftwidth=4
set noautochdir
"let NERDTreeChDirMode=0
set ttimeoutlen=50
autocmd Filetype php setlocal ts=4 sw=4 noexpandtab noet
autocmd BufEnter * :syntax sync fromstart
map <RightMouse> za
map <Leader> ,
nmap <silent> <F5> :bp<CR>
nmap <silent> <F6> :bn<CR>
nmap <silent> <F7> :b#<CR>
nmap <silent> <F12> :AirlineRefresh<CR>

" Set default dark/light / Airline Theme dark / cool
set background=dark
" Nice Themes : dark, powerlineish, ubaryd, wombat, badwolf, tomorrow, lucius

let g:dark_airline_theme='tomorrow'
let g:light_airline_theme='cool'

let g:airline_theme=g:dark_airline_theme

" Let's use same colors as GUI, if possible
silent! set termguicolors
" In case no colors can be seen, add This
" to override_vimrc :
" silent! set termguicolors!

set nocompatible
filetype off
set encoding=utf-8
set scrolloff=2

let php_folding=0

let mapleader=","

source ~/.vim/plugins.vim
filetype plugin indent on

syntax on
set number
set mouse=a
" clearing uses the current background color
set t_ut=
" gruvbox theme settings
let g:gruvbox_inverse=0
let g:gruvbox_improved_strings=0
silent! colorscheme gruvbox
silent! colorscheme PaperColor
"highlight Normal ctermbg=NONE

" NERDCommenter
let g:NERDSpaceDelims = 1

" Vim-Airline Cfg
let g:airline_powerline_fonts = 1
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
" Doesn't play well with Airline (Status bar gets rewritten by Tagbar)
let g:airline#extensions#tagbar#enabled = 0

" certain number of spaces are allowed after tabs, but not in between
" this algorithm works well for /** */ style comments in a tab-indented file
let g:airline#extensions#whitespace#mixed_indent_algo = 2

" Syntastic
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" Make Airline appear
set laststatus=2

set nospell
set nolist
set cursorline
set noexpandtab
set wildmenu
set wildmode=longest:full
set ttyfast
set hidden
set complete=.,w,b,u,U,t,i,d
set noet
set ts=4
set showcmd
set shiftwidth=4
set noautochdir
set ttimeoutlen=50
set fillchars+=vert:\║
autocmd Filetype php setlocal ts=4 sw=4 sts=0 noexpandtab
autocmd FileType php call SetPHPOptions()
autocmd BufEnter * :syntax sync fromstart

function! SetPHPOptions()
	TagbarOpen
endfunction

"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
	\ 'default' : '',
	\ 'vimshell' : $HOME.'/.vimshell_hist',
	\ 'scheme' : $HOME.'/.gosh_completions'
	\ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
	let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
	"return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
	" For no inserting <CR> key.
	return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1

" deoplete
if has('nvim')
	let g:python_host_prog = '/usr/bin/python'
	let g:python3_host_prog = '/usr/bin/python3'
	let g:deoplete#enable_at_startup = 1
	let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
	let g:deoplete#ignore_sources.php = ['omni']
endif
" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
	let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" nextval mappings
nmap <silent> + <Plug>nextvalInc
nmap <silent> - <Plug>nextvalDec

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
imap <expr><TAB>
	\ pumvisible() ? "\<C-n>" :
	\ neosnippet#expandable_or_jumpable() ?
	\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
	\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
	set conceallevel=2 concealcursor=niv
endif

"Prevent vim from moving cursor to the left when leaving Insert mode
" au InsertLeave * call cursor([getpos('.')[1], getpos('.')[2]+1])

let php_htmlInStrings = 1  "Syntax highlight HTML code inside PHP strings.
let php_sql_query = 1      "Syntax highlight SQL code inside PHP strings.
let php_noShortTags = 1    "Disable PHP short tags.
let g:DisableAutoPHPFolding = 1
let g:tagbar_left=0
let g:tagbar_width=30
let g:tagbar_sort=0
let g:tagbar_compact=1
let g:tagbar_indent=1
" Custom Snippets
let g:neosnippet#snippets_directory='~/.vim/snippets'
let g:neosnippet#expand_word_boundary=1
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

"let g:neosnippet#enable_preview = 1
" My custom commands
command! MakeTags !ctags -R --exclude='*.js' .
command! TrimWhiteSpaces %s/\s\+$//g

" Allow moving/resizing splits using mouse inside a Tmux session
silent! set ttymouse=xterm2

" Highlight White Spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" tmuxline
let g:airline#extensions#tmuxline#enabled=1

" Toggle between predefined dark and light mode
function! Dark()
	set background=dark
	" AirlineTheme dark
	AirlineTheme g:dark_airline_theme
endfunction
function! Light()
	set background=light
	AirlineTheme g:light_airline_theme
endfunction
function! ToggleScheme()
	if &background=='dark'
		call Light()
	else
		call Dark()
	endif
endfunction


" Custom GUI settings
highlight Cursor gui=reverse term=reverse
highlight Cursor guifg=yellow guibg=black
highlight iCursor guifg=white guibg=blue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
" set guicursor+=n-v-c:blinkon0
" set guicursor+=i:blinkwait10

" Set font for MacVim
set guifont=InputMono\ ExLight:h18

" Easy-escape
let g:easyescape_chars = { "j": 2 }
let g:easyescape_timeout = 2100
cnoremap jj <Esc>`^
inoremap jj <Esc>`^

" My custom keys
nmap <RightMouse> za
set pastetoggle=<F2>
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
nmap <leader>v	:e ~/.vimrc<CR>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Override this config if needed
try
	source ~/vimconfig/override_vimrc
catch
	" No override_vimrc file found,
	" Let's ignore it
endtry

" Debug if needed
" profile start /tmp/vimprofile
" profile func *

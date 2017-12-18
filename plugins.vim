set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'shawncplus/phpcomplete.vim'
if has('nvim')
	Plugin 'Shougo/deoplete.nvim'
	Plugin 'lvht/phpcd.vim'
else
	Plugin 'Shougo/neocomplete.vim'
endif
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Auto-Pairs'
Plugin 'surround.vim'
Plugin 'repeat.vim'
Plugin 'morhetz/gruvbox'
Plugin 'vim-scripts/restore_view.vim'
Plugin 'phpfolding.vim'
Plugin 'mattn/emmet-vim'
Plugin 'bonsaiben/bootstrap-snippets'
Plugin 'airblade/vim-gitgutter'
Plugin 'easymotion'
Plugin 'edkolev/tmuxline.vim'
Plugin 'zhou13/vim-easyescape'
Plugin 'Tagbar'
Plugin 'matchit.zip'
Plugin 'vim-scripts/nextval'
call vundle#end()

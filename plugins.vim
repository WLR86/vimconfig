set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
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
Plugin 'vim-scripts/restore_view.vim'
Plugin 'phpfolding.vim'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'mattn/emmet-vim'
Plugin 'bonsaiben/bootstrap-snippets'
Plugin 'airblade/vim-gitgutter'
Plugin 'EasyMotion'
Plugin 'edkolev/tmuxline.vim'
Plugin 'zhou13/vim-easyescape'
Plugin 'Tagbar'
Plugin 'matchit.zip'
Plugin 'vim-scripts/nextval'
Plugin 'Tabular'
Plugin 'sieve.vim'
Plugin 'The-NERD-tree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
if (g:nerdfont_enabled)
	Plugin 'ryanoasis/vim-devicons'
endif
call vundle#end()

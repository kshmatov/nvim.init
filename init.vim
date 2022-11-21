" Base settings
set number
set relativenumber
"set mouse=a
set encoding=utf-8
set noswapfile
set scrolloff=7
set tabstop=4
set softtabstop=4
set autoindent
set clipboard=unnamed

filetype indent on

" Plugins 
call plug#begin()

Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim',{'do':'yarn install --frozen-lockfile'}
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'

call plug#end()

let g:go_def_mapping_enabled = 0

" запуск nerdtree автоматически
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" закрываем neovim если открыт только nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

colorscheme gruvbox

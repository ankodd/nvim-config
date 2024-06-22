set encoding=utf-8
set nocompatible

" ignore case with searching
set ignorecase
set smartcase
set termguicolors

set hlsearch

set incsearch

" tabs size
set tabstop=2
set softtabstop=2
set shiftwidth=2

set expandtab

set smarttab

set autoindent
set smartindent
set number
set relativenumber

syntax on

set mouse=a

set clipboard=unnamedplus

set so=30

filetype plugin indent on

" plugins

call plug#begin("~/.vim/plugged")
" colorschemas
Plug 'mellow-theme/mellow.nvim'

Plug 'Pocco81/auto-save.nvim'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
call plug#end()


" set colorschemas
colorscheme mellow


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | wincmd p

nnoremap <leader>n :NERDTreeToggle<CR>
let g:NERDTreeFileLines = 1


autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" autocomplite with TAB
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"

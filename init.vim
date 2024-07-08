set encoding=utf-8
set nocompatible

" ignore case with searching
set ignorecase
set linebreak
set list
set wrap
set ai
set smartcase
set termguicolors

set cursorline

highlight Cursorline cterm=bold

set hlsearch

set incsearch

" tabs size
set tabstop=4
set softtabstop=4
set shiftwidth=4

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
Plug 'blazkowolf/gruber-darker.nvim'

Plug 'andweeb/presence.nvim'
Plug 'Pocco81/auto-save.nvim'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
Plug 'rust-lang/rust.vim'
call plug#end()


" set colorschemas
"colorscheme mellow
colorscheme gruber-darker

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | wincmd p

nnoremap <leader>n :NERDTreeToggle<CR>
let g:NERDTreeFileLines = 1


autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" autocomplete with TAB
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"

" DS RPC SETTINGS

" General options
let g:presence_auto_update         = 1
let g:presence_neovim_image_text   = "The One True Text Editor"
let g:presence_main_image          = "neovim"
let g:presence_client_id           = "793271441293967371"
let g:presence_log_level           = "debug"
let g:presence_debounce_timeout    = 10
let g:presence_enable_line_number  = 0
let g:presence_blacklist           = []
let g:presence_buttons             = 1
let g:presence_file_assets         = {}
let g:presence_show_time           = 1

" Rich Presence text options
let g:presence_editing_text        = "Editing %s"
let g:presence_file_explorer_text  = "Browsing %s"
let g:presence_git_commit_text     = "Committing changes"
let g:presence_plugin_manager_text = "Managing plugins"
let g:presence_reading_text        = "Reading %s"
let g:presence_workspace_text      = "Working on %s"
let g:presence_line_number_text    = "Line %s out of %s"

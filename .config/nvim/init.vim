" Use vundle
set nocompatible
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'elixir-editors/vim-elixir'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-erlang/vim-erlang-tags'
Plugin 'ludovicchabant/vim-gutentags'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on 

" Tab Settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent

" Copy to clipboard instead of vim text buffer
if has('win32')
    set clipboard=unnamed
endif
if has('unix')
    set clipboard=unnamedplus
endif

" Relative line numbers
set number relativenumber

" Set underlined cursor line
set cursorline

" Leader
let mapleader=" "

" Syntax color
syntax on
set background=dark
colorscheme PaperColor

" Better searching functionality
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase

" Enable mouse
set mouse=a

" Keybindings
command! Wq wq
command! WQ wq
command! W w

" Line breaking
set wrap linebreak nolist
noremap k gk
noremap j gj
noremap <Up> gk
noremap <Down> gj
inoremap <Up> <C-o>gk
inoremap <Down> <C-o>gj

" Fuzzy finding
set path+=**
set wildmenu
set wildmode=longest,list

" Ctags
set tags=./.tags;/
nnoremap <C-Space><Return> <C-]>
nnoremap <C-Space><BS> <C-t>
nnoremap <C-Space><C-Space> :silent !ctags -f .tags -R .<return><return><C-l>

" Autocompletion
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Ignore these filetypes
set wildignore+=*.pdf,*.o,*.obj,*.bin,*.jpg,*.png,*.beam

" NERDTREE toggle (normal mode)
nnoremap <C-n> :NERDTreeToggle<CR>
" Close VIM if NERDTREE is only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

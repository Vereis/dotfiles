" Tab Settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

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

" Filetype detection
filetype plugin on
filetype indent on

" Syntax color
syntax on
colorscheme default

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

" Autocompletion
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Ignore these filetypes
set wildignore+=*.pdf,*.o,*.obj,*.bin,*.jpg,*.png,*.beam

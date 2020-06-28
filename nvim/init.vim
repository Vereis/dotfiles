" ===============================================
" # Env Init
" ===============================================

" Check nixos configs defined in vereis/nixos/home.nix
" to see where 'g:config_dir' is usually set
if !exists('g:config_dir')
  let g:config_dir='~/.config/nvim'
endif

execute "set rtp^=" . g:config_dir

" ===============================================
" # Configure Plug + Plugins               
" ===============================================

call plug#begin(g:config_dir . '/bundle')

" General stuff
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'easymotion/vim-easymotion'
Plug 'majutsushi/tagbar'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'machakann/vim-swap'
Plug 'sheerun/vim-polyglot'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Setup fzf
Plug '/usr/local/opt/fzf'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

" Git plugins
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Erlang plugins
Plug 'vim-erlang/vim-erlang-tags'         , { 'for': 'erlang' }
Plug 'vim-erlang/vim-erlang-omnicomplete' , { 'for': 'erlang' }
Plug 'vim-erlang/vim-erlang-compiler'     , { 'for': 'erlang' }
Plug 'vim-erlang/vim-erlang-runtime'      , { 'for': 'erlang' }

" Elixir plugins
Plug 'elixir-editors/vim-elixir' , { 'for': 'elixir' }
Plug 'mhinz/vim-mix-format'      , { 'for': 'elixir' }

" Handlebar Templates
Plug 'mustache/vim-mustache-handlebars' , { 'for': 'html' }

" SCSS syntax highlighting
Plug 'cakebaker/scss-syntax.vim' , { 'for': 'scss' }

" Bunch of nice themes
Plug 'flazz/vim-colorschemes'

call plug#end()


" ===============================================
" # Load all additional configuration files
" ===============================================
for config in split(glob(g:config_dir . '/config/*.vim'), '\n')
  exe 'source' config
endfor

filetype plugin indent on 

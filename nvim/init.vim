" ===============================================
" # Configure Plug + Plugins               
" ===============================================
call plug#begin('~/.config/nvim/bundle')

" General stuff
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

Plug 'easymotion/vim-easymotion'

Plug 'majutsushi/tagbar'

Plug 'ludovicchabant/vim-gutentags'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'

Plug 'itchyny/lightline.vim'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'machakann/vim-swap'

Plug 'airblade/vim-gitgutter'

" Git plugins
Plug 'tpope/vim-fugitive'

" Erlang plugins
Plug 'vim-erlang/vim-erlang-tags'         , { 'for': 'erlang' }
Plug 'vim-erlang/vim-erlang-omnicomplete' , { 'for': 'erlang' }
Plug 'vim-erlang/vim-erlang-compiler'     , { 'for': 'erlang' }
Plug 'vim-erlang/vim-erlang-runtime'      , { 'for': 'erlang' }

" Elixir plugins
Plug 'elixir-editors/vim-elixir' , { 'for': 'elixir' }
Plug 'mhinz/vim-mix-format'      , { 'for': 'elixir' }
Plug 'slashmili/alchemist.vim'   , { 'for': 'elixir' }

" Handlebar Templates
Plug 'mustache/vim-mustache-handlebars' , { 'for': 'html' }

call plug#end()


" ===============================================
" # Load all additional configuration files
" ===============================================
for config in split(glob('~/.config/nvim/config/*.vim'), '\n')
  exe 'source' config
endfor

filetype plugin indent on 

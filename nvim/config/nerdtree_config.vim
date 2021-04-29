" NERDTREE toggle (normal mode)
" Using NERDTreeTabs instead, syncs NERDTree state across all open tabs
nnoremap <C-n> :NERDTreeTabsToggle<CR>

" Close VIM if NERDTREE is only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Show hidden files by default
let NERDTreeShowHidden=1

" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

" Selecting a file closes NERDTREE
let g:NERDTreeQuitOnOpen = 1

" Style
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Auto show open file when opening NERDTreeTabs
let g:nerdtree_tabs_autofind = 1

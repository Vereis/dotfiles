" NERDTREE toggle (normal mode)
nnoremap <C-n> :NERDTreeTabsToggle<CR>

" Close VIM if NERDTREE is only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Show hidden files by default
let NERDTreeShowHidden=1

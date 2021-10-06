" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" Always show signcolumn
set signcolumn=yes

" Use coc's `jump to definition feature`
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Better display for messages
set cmdheight=2

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Always have the following plugins (and updated)
let g:coc_global_extensions = [
  \ 'coc-diagnostic',
  \ 'coc-elixir',
  \ 'coc-tsserver',
  \ 'coc-prettier',
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-vimlsp',
  \ 'coc-highlight',
  \ 'coc-markdownlint',
  \ 'coc-tslint-plugin'
\ ]

let g:coc_user_config = {
  \ "diagnostic-languageserver.filetypes": {
    \ "sh": "shellcheck"
  \ },
  \ "diagnostic-languageserver.formatFiletypes": {
    \ "sh": "shfmt"
  \ },
  \ "markdownlint.config": {
    \ "default": v:true,
    \ "line-length": v:false
  \ },
  \ "codeLens.enable": v:true,
  \ "elixirLS.dialyzerEnabled": v:false,
  \ "css.enable": v:true,
  \ "scss.validate": v:true,
  \ "tslint.jsEnable": v:true,
  \ "tslint.autoFixOnSave": v:true,
  \ "coc.preferences.formatOnSaveFiletypes": ["elixir", "erlang", "ex", "eex", "erl", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact", "graphql", "jsx", "sh"],
  \ "prettier.formatterPriority": 10,
  \ "prettier.onlyUseLocalVersion": v:true,
  \ "javascript.format.enabled": v:true
\ }

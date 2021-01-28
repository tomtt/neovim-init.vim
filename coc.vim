" Add the plin itself
Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'readonly', 'filename', 'modified', 'coc_error', 'coc_warning', 'coc_hint', 'coc_info' ] ],
    \   'right': [ [ 'lineinfo',  ],
    \              [ 'percent' ],
    \              [ 'fileformat', 'fileencoding', 'filetype'] ]
    \ },
    \ 'component_expand': {
    \   'coc_error'        : 'LightlineCocErrors',
    \   'coc_warning'      : 'LightlineCocWarnings',
    \   'coc_info'         : 'LightlineCocInfos',
    \   'coc_hint'         : 'LightlineCocHints',
    \   'coc_fix'          : 'LightlineCocFixes',
    \ },
    \ 'component_function': {
    \   'cocstatus': 'coc#status',
    \   'currentfunction': 'CocCurrentFunction'
    \ },
    \ }
  let g:lightline.component_type = {
    \   'coc_error'        : 'error',
    \   'coc_warning'      : 'warning',
    \   'coc_info'         : 'tabsel',
    \   'coc_hint'         : 'middle',
    \   'coc_fix'          : 'middle',
    \ }

" https://jamesnewton.com/blog/setting-up-coc-nvim-for-ruby-development
  " Setup completion popup
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  let g:coc_global_extensions = ['coc-json', 'coc-fzf-preview', 'coc-html', 'coc-markdownlint', 'coc-prettier']

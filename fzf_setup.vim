Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' " Fuzzy finder

" fzf-vim
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'

let g:fzf_layout = {'up': '~60%' }

" This would be the config for fzf in a popup window, not sure if I like it yet
" let g:fzf_layout =
"   \ { 'up':'~91%',
"     \ 'window':
"     \ { 'width': 0.8,
"       \ 'height': 0.8,
"       \ 'yoffset':0.5,
"       \ 'xoffset': 0.5,
"       \ 'highlight': 'Todo',
"       \'border': 'sharp'
"     \ }
"   \ }

" search using fzf
set rtp+=/usr/local/opt/fzf


" GDiffFiles fzf opens files changed since origin/master branch
let g:diff_files_branch = 'origin/master'
command! -bang -nargs=* GDiffFiles
  \ call fzf#run(fzf#wrap(
  \   'g_diff_files',
  \   {
  \      'source': 'git diff --name-only --diff-filter=ACM '.g:diff_files_branch,
  \   },
  \   <bang>0
  \ ))

" This was a try at GDiffFiles: it did show preview but did not open the file
" command! -bang -nargs=* GDiffFiles
"   \ call fzf#vim#grep(
"   \   'git diff --name-only --diff-filter=ACM '.g:diff_files_branch, 0,
"   \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

" " This was supposed to use current theme colors for fzf colors, but does not work
" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'Type'],
"   \ 'border':  ['fg', 'Ignore'],
"   \ 'prompt':  ['fg', 'Character'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }

" " This was supposed to use dracula theme colors for fzf colors, but does not work
" let g:fzf_colors = {
" \ 'fg': ['fg', 'Normal'],
" \ 'bg': ['bg', 'Normal'],
" \ 'hl': ['fg', 'Search'],
" \ 'fg+': ['fg', 'Normal'],
" \ 'bg+': ['bg', 'Normal'],
" \ 'hl+': ['fg', 'DraculaOrange'],
" \ 'info': ['fg', 'DraculaPurple'],
" \ 'border': ['fg', 'Ignore'],
" \ 'prompt': ['fg', 'DraculaGreen'],
" \ 'pointer': ['fg', 'Exception'],
" \ 'marker': ['fg', 'Keyword'],
" \ 'spinner': ['fg', 'Label'],
" \ 'header': ['fg', 'Comment'] }

if has('nvim')
  " Affect fzf color, including code preview
  " https://github.com/neovim/neovim/issues/2897#issuecomment-115464516
  let g:terminal_color_0 = '#4e4e4e'
  let g:terminal_color_1 = '#d68787'
  let g:terminal_color_2 = '#5f865f'
  let g:terminal_color_3 = '#d8af5f'
  let g:terminal_color_4 = '#85add4'
  let g:terminal_color_5 = '#d7afaf'
  let g:terminal_color_6 = '#87afaf'
  let g:terminal_color_7 = '#d0d0d0'
  let g:terminal_color_8 = '#626262'
  let g:terminal_color_9 = '#d75f87'
  let g:terminal_color_10 = '#87af87'
  let g:terminal_color_11 = '#ffd787'
  let g:terminal_color_12 = '#add4fb'
  let g:terminal_color_13 = '#ffafaf'
  let g:terminal_color_14 = '#87d7d7'
  let g:terminal_color_15 = '#e4e4e4'

  set fillchars=vert:\|,fold:-
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
else
  let g:terminal_ansi_colors = [
    \ '#4e4e4e', '#d68787', '#5f865f', '#d8af5f',
    \ '#85add4', '#d7afaf', '#87afaf', '#d0d0d0',
    \ '#626262', '#d75f87', '#87af87', '#ffd787',
    \ '#add4fb', '#ffafaf', '#87d7d7', '#e4e4e4']
endif


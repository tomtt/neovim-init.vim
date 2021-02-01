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

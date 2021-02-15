""" Custom Mappings
let mapleader="\<Space>"
nmap \ <leader>q
" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap kj <C-\><C-n>
tmap <C-w> <Esc><C-w>

nmap <leader>w :TagbarToggle<CR>
nmap <leader>ee :Colors<CR>
nmap <leader>ea :AirlineTheme
nmap <leader>e1 :call ColorDracula()<CR>
nmap <leader>e2 :call ColorSeoul256()<CR>
nmap <leader>e3 :call ColorForgotten()<CR>
nmap <leader>e4 :call ColorZazen()<CR>
nmap <leader>e5 :call ColorGruvbox()<CR>
nmap <leader>rv :so ~/.config/nvim/init.vim<CR>
nmap <leader>t :call TrimWhitespace()<CR>
xmap <leader>a gaip*
nmap <leader>a gaip*
nmap <leader>s <C-w>s<C-w>j:terminal<CR>
nmap <leader>vs <C-w>v<C-w>l:terminal<CR>
nmap <leader>d <Plug>(pydocstring)
nmap <leader>f :Files<CR>
nmap <leader>gg :Goyo<CR>
nmap <leader>h :RainbowParentheses!!<CR>
nmap <leader>J :set filetype=journal<CR>
nmap <leader>M :set filetype=markdown<CR>
nmap <leader>R :set filetype=ruby<CR>
nmap <leader>V :set filetype=vimwiki<CR>
nmap <leader>X :set filetype=text<CR>
nmap <leader>k :ColorToggle<CR>
nmap <leader>l :Limelight!!<CR>
xmap <leader>l :Limelight!!<CR>
autocmd FileType python nmap <leader>x :0,$!~/.config/nvim/env/bin/python -m yapf<CR>
"nmap <leader>n :HackerNews best<CR>J
nmap <silent> <leader><leader> :noh<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>

" Leader config adopted from Clement
" noremap <leader>q :q<cr>
nnoremap <leader>s :w<cr>

" align  current paragraph mapped to leader a
noremap <leader>i =ip
" map leader p to fzt fuzzy search
map <leader>p :Files<CR>
" map leader f to  search in buffer
map <leader>f :BLines<CR>
" map leader o to split vetically
" map <leader>o :vsp<CR>
map <leader>b :NERDTreeToggle<CR>
map <leader>C :NERDTreeFind<CR>
map <leader>B :TagbarToggle<CR>

" map leader F to search
map <leader>F :Ag<SPACE>

" bind leader k to grep word under cursor
nnoremap <leader>k :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap <leader>K :call fzf#vim#tags(expand('<cword>'))<CR>

" remap Wq to wq (making the typo so often)
command! Wq wq

map <Leader>r :RuboCop<cr>
map <Leader>ra :RuboCop -a<cr>

" fast navigation between buffers
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

map <Leader>m :Emodel<cr>
map <Leader>c :Econtroller<cr>
map <Leader>u :Eunittest<cr>
map <Leader>v :Eview<cr>

map <Leader>x :bd<cr>
map <Leader>D :call delete(expand('%'))<cr>

" mapping to tig (integrates git in vim)
map <Leader>g1 :Commits<CR>
map <Leader>g2 :!tig status<CR><CR>
map <Leader>g3 :!git diff -w<CR>
map <Leader>g4 :!git add .<CR><CR>
map <Leader>g5 :!git commit<CR>
map <Leader>g6 :Extradite<CR>
map <Leader>gb :Gblame<CR>

noremap <Leader>de O(require('pry'); binding.pry)<ESC>+
autocmd FileType javascript noremap <Leader>de Oeval(require('pryjs').it);<ESC>+

" map leader h to prev buffer
map <Leader>h :bprev<cr>

" map leader l to next buffer
map <Leader>l :bnext<cr>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Don't use Ex mode, use Q for formatting
map Q gq
map <Leader>T :Dispatch bundle exec ruby %<CR>

" RSpec.vim mappings
let g:rspec_command = ":Dispatch bundle exec rspec {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>A :qa<CR>

" use ,, to trigger emmet
let g:user_emmet_leader_key=','

" Toggle shortcuts
nnoremap <Leader>yc :HexokinaseToggle<CR>
" Inline git diff
nnoremap <Leader>yd :GitGutterFold<CR>
nnoremap <Leader>yg :GitGutterBufferToggle<CR>
nnoremap <Leader>yi :IndentLinesToggle<CR>
nnoremap <Leader>yl :ALEToggleBuffer<CR>
nnoremap <Leader>yr :RainbowParentheses!!<CR>

"Editing
" 'inside next parenthesis'
onoremap <silent> in( :<c-u>normal! f(vi(<cr>
" 'inside previous parenthesis'
onoremap <silent> in) :<c-u>normal! F(vi(<cr>

" copy buffer path to clipboard and echo it
function! CopyBufferPath(expand_arg)
  let @+ = expand(a:expand_arg)
  echo @+
endfunction

nnoremap <Leader>j :let @+=expand('%:p')<CR>

" hands-on-home-row escape
" play a noise to warn to not use escape, but escape anyway
inoremap <esc> <cmd>call PlayNoise($VIM_PING_SOUND)<cr><esc>
vnoremap <esc> <cmd>call PlayNoise($VIM_PING_SOUND)<cr><esc>
inoremap kj <esc>
vnoremap kj <esc>

" Navigating diagnostics
nmap <silent> <c-k>       <plug>(coc-diagnostic-prev)
nmap <silent> <c-j>       <plug>(coc-diagnostic-next)

"""""""""""""""""""""""""
" Jump places <leader>j "
"""""""""""""""""""""""""
nnoremap <leader>jb :call CopyBufferPath('%')<CR>
nnoremap <leader>jB :call CopyBufferPath('%:p')<CR>
nmap <silent> <leader>jc <plug>(coc-rename)
" Open definition of word under cursor
nmap <silent> <leader>jd <Plug>(coc-definition)
nmap <leader>jp <plug>(coc-type-definition)

nmap <leader>jr <plug>(coc-references)
nnoremap <silent> <leader>js <cmd>call CocAction('jumpDefinition', 'split')<cr>
nnoremap <silent> <leader>jt <cmd>call CocAction('jumpDefinition', 'tabe')<cr>
nnoremap <silent> <leader>jv <cmd>call CocAction('jumpDefinition', 'vsplit')<cr>

" Does not work, but I want it :(
nmap <silent> <leader>jh <cmd>call CocAction('showSignatureHelp')<cr>
" Or this :(
" nmap <silent> K           <cmd>call <sid>show_documentation()<cr>

"""""""""""""""""""""""
" Go places <leader>g "
"""""""""""""""""""""""
" Open alternate file (usually test / implementation)
nnoremap <leader>oa :A<CR>
" Fzf open buffers
nnoremap <leader>ob :Buffers<CR>
" Fzf current buffer
nnoremap <leader>oc :BLines<CR>
" Fzf files
nnoremap <leader>of :Files<CR>
" Fzf git files
nnoremap <leader>og :GFiles<CR>
" FzF file history
nnoremap <leader>oh :History<CR>
" CocList diagnostics
nnoremap <leader>oi :<C-u>CocList diagnostics<cr>
" Fzf lines in loaded buffers
nnoremap <leader>ol :Lines<CR>
" Fzf marks
nnoremap <leader>om :Marks<CR>
" Ripgrep in project
nnoremap <leader>or :Rg<CR>
" Fzf snippets
nnoremap <leader>os :Snippets<CR>
" Fzf tags
nnoremap <leader>ot :Tags<CR>
" Open alternate file in opposite pane
nmap <leader>ov <c-w>o<cmd>AV<CR>
" Fzf windows
nnoremap <silent> <leader>ow <cmd>Windows<CR>


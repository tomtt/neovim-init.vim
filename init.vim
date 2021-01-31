""" Optixal's Neovim Init.vim, edited by tomtt

""" Vim-Plug
call plug#begin()

" Aesthetics - Main
Plug 'dracula/vim', { 'commit': '147f389f4275cec4ef43ebc25e2011c57b45cc00' } " dark theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons' " Adds file type icons to Vim plugins
Plug 'junegunn/goyo.vim' " Distraction-free writing
Plug 'junegunn/limelight.vim' " Hyperfocus-writing in Vim
Plug 'junegunn/seoul256.vim' " Low contrast theme
Plug 'junegunn/vim-journal' " Syntax plugin for plain text notes
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'nightsense/forgotten' " Theme
Plug 'zaki/zazen' " Color scheme

" Aethetics - Additional
Plug 'nightsense/nemo' " Theme
Plug 'yuttie/hydrangea-vim' " Theme
Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }
Plug 'rhysd/vim-color-spring-night' " Low contrast
Plug 'emanuelrosa/badcat' " Dark colorscheme

" Functionalities
Plug 'tpope/vim-fugitive' " Git
Plug 'tpope/vim-sensible' " Defaults
Plug 'tpope/vim-surround' " All about 'surroundings' (,{,[,tags etc
Plug 'majutsushi/tagbar' " Browser for code tags
Plug 'scrooloose/nerdtree' " File browser
Plug 'scrooloose/nerdcommenter' " Easy commenting of code for many filetypes
Plug 'ervandew/supertab' " Insert completion
" Plug 'jiangmiao/auto-pairs' " Insert matching closing characters
Plug 'junegunn/vim-easy-align' " Align code / table based on rules
Plug 'alvan/vim-closetag' " Autoclose html tags
Plug 'tpope/vim-abolish' " Abbreviation, substitution, case coercion
Plug 'Yggdroot/indentLine' " Vertical lines at each code indentation level
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim' " Fuzzy finder
Plug 'sheerun/vim-polyglot' " Language pack
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' } " color colornames and codes
Plug 'KabbAmine/vCoolor.vim' " Color picker/selector
" Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plug 'vim-scripts/loremipsum' " Dummy text
Plug 'SirVer/ultisnips' " Code snippet engine
Plug 'honza/vim-snippets' " Snippets files for languages for ultisnips
Plug 'metakirby5/codi.vim' " Interactive hacker scratchpad
Plug 'dkarter/bullets.vim' " Automated bullet lists

" Plugins added by tomtt
Plug 'mattn/emmet-vim' " web development toolkit
Plug 'tpope/vim-commentary' " Comment stuff out
Plug 'tpope/vim-endwise' " End certain code structures automatically
Plug 'tpope/vim-rails'
Plug 'tpope/vim-dispatch' " Async
Plug 'airblade/vim-gitgutter' " Shows a git diff in the sign column
Plug 'thoughtbot/vim-rspec' " RSpec runner
Plug 'Xuyuanp/nerdtree-git-plugin' " Plugin of NERDTree showing git status
" Plug 'w0rp/ale' " Asynchronous Lint Engine, LSP client
Plug 'chr4/nginx.vim' " Editing nginx config files
" Plug 'rhysd/vim-crystal' " Filetype Support for Crystal
Plug 'posva/vim-vue'
Plug 'joker1007/vim-ruby-heredoc-syntax'
Plug 'christoomey/vim-system-copy' " Copying / pasting text to the os specific clipboard
Plug 'farmergreg/vim-lastplace' " Intelligently reopen files at your last edit position
Plug 'ngmy/vim-rubocop'
Plug 'int3/vim-extradite' " Git commit browser
Plug 'AndrewRadev/switch.vim' " Switch e.g. .should <-> .should_not
Plug 'tpope/vim-unimpaired' " ??
Plug 'vimwiki/vimwiki' " Personal wiki for Vim
Plug 'elixir-editors/vim-elixir'
Plug 'elmcast/elm-vim'

let g:vimwiki_list = [{'path': ($VIMWIKI_PATH =~ '\w') ? $VIMWIKI_PATH : '~/Dropbox/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

Plug 'ConradIrwin/vim-bracketed-paste' " Enables transparent pasting into vim
Plug 'chrisbra/csv.vim' " A Filetype plugin for csv files
Plug 'noprompt/vim-yardoc' " Syntax extensions for highlighting YARD documentation
" Plug 'christoomey/vim-tmux-navigator'
Plug 'leafgarland/typescript-vim'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'terryma/vim-smooth-scroll' " Make scrolling in Vim more pleasant
Plug 'morhetz/gruvbox' " Theme

set hidden

" source ~/.config/nvim/deoplete.vim
" source ~/.config/nvim/language_client.vim
source ~/.config/nvim/coc.vim

" Entertainment
"Plug 'ryanss/vim-hackernews'

call plug#end()

""" Python3 VirtualEnv
let g:python3_host_prog = expand('~/.config/nvim/env/bin/python')

""" Coloring
syntax on
color dracula
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none

" Opaque Background (Comment out to use terminal's profile)
set termguicolors

" Transparent Background (For i3 and compton)
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE

""" Other Configurations
filetype plugin indent on
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set fillchars+=vert:\
set wrap breakindent
set encoding=utf-8
set number
set title

""" Plugin Configurations

" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_z = ' %{strftime("%-I:%M %p")}'
let g:airline_section_warning = ''
"let g:airline#extensions#tabline#enabled = 1

" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
"tmap <C-d> <Esc>:q<CR>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" vim-pydocstring
let g:pydocstring_doq_path = '~/.config/nvim/env/bin/doq'

" Supertab
let g:SuperTabDefaultCompletionType = "<C-n>"

" Ultisnips
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-x>"

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" indentLine
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'

" TagBar
let g:tagbar_width = 30
let g:tagbar_iconchars = ['↠', '↡']

" fzf-vim
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Type'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Character'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

""" Filetype-Specific Configurations

" HTML, XML, Jinja
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango inoremap {{ {{  }}<left><left><left>
autocmd FileType htmldjango inoremap {% {%  %}<left><left><left>
autocmd FileType htmldjango inoremap {# {#  #}<left><left><left>

" Markdown and Journal
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2

""" Custom Functions

" Trim Whitespaces
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction

" Dracula Mode (Dark)
function! ColorDracula()
    let g:airline_theme=''
    color dracula
    IndentLinesEnable
endfunction

" Seoul256 Mode (Dark & Light)
function! ColorSeoul256()
    let g:airline_theme='silver'
    color seoul256
    IndentLinesDisable
endfunction

" Forgotten Mode (Light)
function! ColorForgotten()
    " Light airline themes: tomorrow, silver, alduin
    " Light colors: forgotten-light, nemo-light
    let g:airline_theme='tomorrow'
    color forgotten-light
    IndentLinesDisable
endfunction

" Zazen Mode (Black & White)
function! ColorZazen()
    let g:airline_theme='badcat'
    color zazen
    IndentLinesEnable
endfunction

" Gruvbox Mode (Dark)
function! ColorGruvbox()
    colorscheme gruvbox
    IndentLinesEnable
endfunction

" Load custom mappings
source ~/.config/nvim/mappings.vim

" Config adopted from Clement

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" search using fzf
set rtp+=/usr/local/opt/fzf

if has("vms")
  set nobackup " do not keep a backup file, use versions instead
else
  set backup " keep a backup file (restore to previous version)
  set undofile " keep an undo file (undo changes after closing)
  set directory=~/.vim/tmp
  set backupdir=~/.vim/tmp
  set undodir=~/.vim/tmp
endif

set history=100 " keep 100 lines of command line history
set ruler " show the cursor position all the time
set showcmd " display incomplete commands
set incsearch " do incremental searching
set regexpengine=1 " avoid slow scrolling issue with vim ruby (https://github.com/vim-ruby/vim-ruby/issues/243)

" Line Numbers
" With relativenumber and number set, shows relative number but has current
" number on current line.
set relativenumber
set numberwidth=3
set number

:au FocusLost * :set number
:au FocusGained * :set relativenumber

set encoding=utf8

highlight ColorColumn ctermbg=235 guibg=#2c2d27
set cc=128 " highlight colums for strict mode and critical length

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
endif

if has('langmap') && exists('+langnoremap')
  " Prevent that the langmap option applies to characters that result from a
  " mapping.  If unset (default), this may break plugins (but it's backward
  " compatible).
  set langnoremap
endif

set smarttab
set autoindent
set copyindent " copy previous indentation on autoindenting
set showmatch " show matching parenthesis

" Don't show `-- INSERT --` below the statusbar since it's in the statusbar
set noshowmode

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set ttyfast
set lazyredraw  " prevent redraws while executing

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Tab completion
set wildmode=list:longest,list:full

function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction

inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>
" imap <C-J> <Plug>snipMateNextOrTrigger
" smap <C-J> <Plug>snipMateNextOrTrigger

" press return to temporarily get out of the highlighted search
nnoremap <C-n> :nohlsearch<CR><CR>
set hlsearch

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" remove trailing spaces when saving
autocmd BufWritePre * %s/\s\+$//e

" display all buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

" dont use mappings form git gutter plugin
let g:gitgutter_map_keys = 0

" ingore whitespace with diffs
let g:gitgutter_diff_args = '-w'

let g:airline_powerline_fonts = 1 "use powerline font symbols for fancier airline bar

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')


" Change hash rockets (:x => a) to new Ruby syntax (x: a)
function! RocketFix()
  %s/:\([^=,'"]*\) =>/\1:/gc
endfunction

" ignore whitespace by default when using vimdiff
if &diff
    " diff mode
    set diffopt+=iwhite
endif

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup
  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

endif

" skip quickfix buffer when nvigating through buffers
augroup qf
  autocmd!
  autocmd FileType qf set nobuflisted
augroup END

" options for tagbar plugin
let g:tagbar_type_ruby = {
      \ 'kinds' : [
      \ 'm:modules',
      \ 'c:classes',
      \ 'd:describes',
      \ 'C:contexts',
      \ 'f:methods',
      \ 'F:singleton methods'
      \ ]
      \ }

let g:ale_linters = {
      \'ruby': ['rubocop', 'reek'],
      \}

let g:ale_fixers = {
      \   'javascript': ['prettier'],
      \   'css': ['prettier'],
      \}

let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0 " disable highlighting
let g:ale_sign_column_always = 1



highlight clear ALEErrorSign
highlight clear ALEWarningSign

let g:ruby_heredoc_syntax_filetypes = {
        \ "xml" : {
        \   "start" : "XML",
        \},
  \}

" tomtt
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" smooth scroll mappings
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" line move mappings
" ∆=A-j
nnoremap ∆ :m .+1<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
" ˚=A-k
nnoremap ˚ :m .-2<CR>==
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ˚ :m '<-2<CR>gv=gv

set softtabstop=2

" Activation based on file type
:augroup rainbow
:  autocmd!
:  autocmd FileType lisp,clojure,scheme,ruby RainbowParentheses
:augroup END

let g:indentLine_enabled = 1
let g:Hexokinase_highlighters = ['background']
let g:Hexokinase_optInPatterns = 'full_hex,triple_hex,rgb,rgba,hsl,hsla,colour_names'
"
" Move cursor to first non-blank column of the line
set startofline

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing extra message when using completion
" set shortmess+=c

" Extentions to look for when using `gf`
" set suffixesadd+=.tsx,.ts,.js,.jsx,.scss,.css,.json
"

Plug 'w0rp/ale' " Asynchronous Lint Engine, LSP client

let g:ale_linters = {
      \'ruby': ['standardrb', 'solargraph', 'rubocop'],
      \}

let g:ale_fixers = {
      \   'javascript': ['prettier'],
      \   'css': ['prettier'],
      \   'ruby': ['standardrb', 'rubocop'],
      \}

let g:ale_completion_enabled = 1
let g:ale_ruby_standardrb_executable = "~/.rbenv/versions/2.7.2/bin/standardrb"

let g:ale_fix_on_save = 1
let g:ale_set_highlights = 0 " disable highlighting
let g:ale_sign_column_always = 1
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_column_always = 1

highlight clear ALEErrorSign
highlight clear ALEWarningSign


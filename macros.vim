" Treat current line as template: replace each occurence of '%%' with line
" below it
function! UseLineAsTemplateWithDataBelow()
  execute "normal! YP2jd$2k:s/%%/\<C-R>-/g\<CR>2jddk"
endfunction

nnoremap <Leader>qt <cmd>call UseLineAsTemplateWithDataBelow()<CR>

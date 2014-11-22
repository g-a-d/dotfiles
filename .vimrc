set expandtab
set tabstop=4

inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

au BufNewFile,BufRead *.template set filetype=json

augroup json_autocmd 
  autocmd! 
  autocmd FileType json set autoindent 
  autocmd FileType json set formatoptions=tcq2l 
  autocmd FileType json set textwidth=78 shiftwidth=2 
  autocmd FileType json set softtabstop=2 tabstop=8 
  autocmd FileType json set expandtab 
  autocmd FileType json set foldmethod=syntax 
  au BufRead * normal zR
  autocmd FileType json nmap <silent>  <C-j> :%! python -m json.tool<CR>
  autocmd FileType json vmap <silent>  <C-j> ! python -m json.tool<CR>
augroup END


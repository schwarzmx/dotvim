" automatic indentation based on filetype
set autoindent
if has ("autocmd")
  filetype plugin indent on
endif

" specify indentation for ruby files
autocmd FileType ruby setlocal expandtab shiftwidth=2 softtabstop=2

" specify indentation for python files
autocmd FileType python setlocal expandtab shiftwidth=2 softtabstop=2


" my preferred color scheme
colorscheme slate


" show line numbers
set number

" remove annoying wrap
set nowrap

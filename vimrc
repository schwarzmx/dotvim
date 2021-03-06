" automatic indentation based on filetype
set autoindent
if has ("autocmd")
  filetype plugin indent on
endif

"" Whitespaces
" always use spaces instead of tab
set expandtab
" specify indentation for rails files
autocmd FileType ruby,eruby,yaml setlocal shiftwidth=2 softtabstop=2
" indentation for html
autocmd FileType html setlocal shiftwidth=2 softtabstop=2
" indentation for css
autocmd FileType css setlocal shiftwidth=2 softtabstop=2
" specify indentation for python files
autocmd FileType python setlocal shiftwidth=4 softtabstop=4
" specify indentation for javascript files
autocmd FileType javascript setlocal shiftwidth=4 softtabstop=4
"" c/c++ basic config - TODO: add stuff for :make and whatnot
autocmd FileType c,cpp,cc,h setlocal shiftwidth=2 softtabstop=2 textwidth=80

" show line numbers, and columns
set number
set ruler

" remove annoying wrap
set nowrap

if has("gui_running")
  " GUI is running or is about to start.

  " default window size
  set lines=45 columns=120
  " use darkmate only for GUI
  colorscheme darkmate
else
  " This is console Vim.

  " Use slate in the terminal
  " colorscheme slate
  syntax on
  set t_Co=256
  colorscheme superman
endif

" font for GUI
set guifont="Monaco\ for\ Powerline\ 9"For this line to work, you have to install TextMate's Monaco font

" concentrate backups and swap files in one place
set backupdir=~/.vim/.tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim/.tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" search
set hlsearch	" highlight matches
set incsearch	" incremental searching
set ignorecase	" searches are case insensitive...
set smartcase	" ... unless they contain at least one capital letter

" plugins
execute pathogen#infect()

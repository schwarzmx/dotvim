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
colorscheme darkmate "slate used to be my preferred, but now I'm testing out darkmate


" show line numbers
set number

" remove annoying wrap
set nowrap

" default window size
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=45 columns=120
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=120
  endif
endif

" font for GUI
set guifont=Monaco:h13 "For this line to work, you have to install TextMate's Monaco font

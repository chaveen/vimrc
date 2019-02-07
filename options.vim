" not in insert mode
set noim

" disable error sounds
set visualbell

" enable non-compatible mode
if &compatible
  set nocompatible
endif

" enable black slash for paths
if exists('+shellslash')
    set shellslash
endif

" number
set number

" Required:
filetype plugin indent on
syntax enable


" tab spaces ----
set tabstop=4 shiftwidth=4 expandtab


" not in insert mode
set noim

" disable error sounds
set visualbell

" enable non-compatible mode
if &compatible
  set nocompatible
endif

"backup and swapfiles
set backupdir=~/.vimtemp,$TEMP
set noswapfile

" number
set number

" tab spaces 
set tabstop=4 
set shiftwidth=4 
set expandtab

"terminal
set termwinkey=:

if has("win32")
    set shell=C:\Windows\Sysnative\wsl.exe
    set shellpipe=|
    set shellredir=>
    set shellcmdflag=
endif

"backspace
set backspace=indent,eol,start


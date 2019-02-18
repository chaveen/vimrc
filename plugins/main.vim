if has("win32")
    set noshellslash
    
    let g:PLUGIN_DIRECTORY = expand('<sfile>:p:h') . "\\bundle\\"
else
    let g:PLUGIN_DIRECTORY = expand('<sfile>:p:h') . "/bundle/"
endif

call plug#begin(g:PLUGIN_DIRECTORY)

Plug 'junegunn/vim-plug'
Plug 'fenetikm/falcon'
Plug 'vim-airline/vim-airline' 

call plug#end()


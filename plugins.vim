call plug#begin(expand('<sfile>:p:h') . '/plugged')

Plug 'junegunn/vim-plug'
Plug 'fenetikm/falcon', { 'do': ':let g:colors_name=\"falcon\"' }

call plug#end()

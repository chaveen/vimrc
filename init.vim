set visualbell

" dein Scripts-----------------------------
if &compatible
  set nocompatible
endif

" Required:
let init_path = expand('<sfile>:p:h')
let bundle_path = init_path . '/bundle'
let dein_path =  bundle_path . '/repos/github.com/Shougo/dein.vim'
let &runtimepath .= ',' . dein_path 

" Required:
if dein#load_state(dein_path)
    call dein#begin(dein_path)

    " Let dein manage dein
    " Required:
    call dein#add(dein_path)

    " Add or remove your plugins here:
    call dein#add('Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'})
    call dein#add('Shougo/denite.nvim')

    call dein#add('scrooloose/nerdtree', { 'on_cmd': 'NERDTreeToggle' })
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')

    call dein#add('cocopon/iceberg.vim')

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" deoplete ----
let g:deoplete#enable_at_startup = 1

" color scheme ----
colorscheme iceberg

" tab spaces ----
:set tabstop=4 shiftwidth=4 expandtab


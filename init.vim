set visualbell

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/ekanayc/.config/nvim/bundle/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/ekanayc/.config/nvim/bundle')
	call dein#begin('/home/ekanayc/.config/nvim/bundle')

      	" Let dein manage dein
	" Required:
        call dein#add('/home/ekanayc/.config/nvim/bundle/repos/github.com/Shougo/dein.vim')

        " Add or remove your plugins here:
	call dein#add('scrooloose/nerdtree', { 'on_cmd': 'NERDTreeToggle' })
	call dein#add('Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'})
        call dein#add('Shougo/neosnippet.vim')
        call dein#add('Shougo/neosnippet-snippets')
	call dein#add('Shougo/denite.nvim')
	call dein#add('chemzqm/vim-easygit')
	call dein#add('chemzqm/denite-git')
	
	" You can specify revision/branch/tag.
	call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

	call dein#add('artur-shaik/vim-javacomplete2')

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

" deoplete
let g:deoplete#enable_at_startup = 1

" javacomplete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete

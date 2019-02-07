
function! g:CheckAndLoadVimPlug() 
    let vimAutoLoadDirectory = "./autoload"
    let vimPlugUrl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

    if !isdirectory(vimAutoLoadDirectory) 
        call mkdir(vimAutoLoadDirectory, "p")
    endif 

    let vimPlugFile = './autoload/plug.vim'

    if !filereadable(vimPlugFile) 
        silent execute '!curl -sfLo ' . vimPlugFile . ' '. vimPlugUrl 
    endif
endfunction

call g:CheckAndLoadVimPlug()

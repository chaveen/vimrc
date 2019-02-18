
function! g:CheckAndLoadVimPlug() 
    let vimPlugFilename = expand("<sfile>:p:h") . "/autoload/plug.vim"
    let vimPlugDirecotry = fnamemodify(vimPlugFilename, ':h')
    let vimPlugUrl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

    if !isdirectory(vimPlugDirecotry) 
        call mkdir(vimPlugDirecotry, "p")
    endif 

    if !filereadable(vimPlugFilename)
        silent execute '!curl -sfLo ' . vimPlugFilename . ' '. vimPlugUrl 
    endif
endfunction

call g:CheckAndLoadVimPlug()

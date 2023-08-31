" underline cursor in replace-like modes
set guicursor=r-cr-o:hor20

" blinking cursor in insert mode
set guicursor+=i:blinkwait0-blinkoff2-blinkon2

augroup cursor_behaviour

    " reset cursor on start:
    autocmd VimEnter * silent !echo -ne "\e[2 q"


    " highlight Cursor guifg=white guibg=black
    " highlight iCursor guifg=white guibg=steelblue
    " set guicursor=n-v-c:block-Cursor
    " set guicursor+=i:ver100-iCursor
    " set guicursor+=n-v-c:blinkon0
    " set guicursor+=i:blinkwait10

    " highlight current line when in insert mode
    autocmd InsertEnter * set cursorline
    " turn off current line highlighting when leaving insert mode
    autocmd InsertLeave * set nocursorline

    " recording identicator 
    autocmd RecordingEnter * set cursorcolumn
    autocmd RecordingLeave * set nocursorcolumn

augroup END


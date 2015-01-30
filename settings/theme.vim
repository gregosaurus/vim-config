set t_Co=256
set background=dark
"colorscheme jellybeans

" Colors
"let g:seoul256_background = 233
"colorscheme seoul256

"colorscheme saturn
"colorscheme flatland

"let g:gruvbox_hls_cursor = "red"
"colorscheme gruvbox

"hi nontext ctermfg=bg guifg=bg cterm=NONE gui=NONE
if has("gui_running")
    colorscheme flatland
else
    colorscheme kolor
endif

" hack because airline_theme must be set after coloschme for some reason
let g:airline_theme='bubblegum'

highlight SignColumn ctermbg=black
highlight SignColumn guibg=black

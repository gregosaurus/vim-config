filetype off
set nocompatible

call vundle#rc()

let s:rc_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let s:plugins_path = s:rc_path . '/plugins'

for fpath in split(globpath(s:plugins_path, '*.vim'), '\n')
    exe 'source'  fpath
endfor

filetype plugin indent on

let g:is_posix = 1
let mapleader = ","

syntax on

set winaltkeys=no
set autoindent
set autoread
set backspace=indent,eol,start
set clipboard=unnamed
set colorcolumn=80
set cursorline
set expandtab
set hidden
set history=1000
set hlsearch
set incsearch
set nowrap
set number
set shiftwidth=4
"set showcmd
set showmatch
set softtabstop=4
set tabstop=4
set wildmenu

hi CursorLine term=none cterm=none ctermbg=0
hi CursorColumn term=none cterm=none ctermbg=0


" From Valloric
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           reset vimrc augroup                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" We reset the vimrc augroup. Autocommands are added to this group throughout
" the file
augroup vimrc
  autocmd!
augroup END

if v:version >= 704
  set regexpengine=1
endif

" Don't automatically insert a comment command when entering insert mode with o
au FileType * setl formatoptions-=o
" But do when hitting enter on a comment line, or when wrapping
au FileType * setl formatoptions+=tcrq

vmap > >gv
vmap < <gv

noremap <M-Left> <C-O>
noremap <M-Right> <C-I>

" http://vim.wikia.com/wiki/Recover_from_accidental_Ctrl-U
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

cmap w!! %!sudo tee > /dev/null %
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Open the git grep result in the quickfix window
autocmd QuickFixCmdPost *grep* cwindow

if has("gui_running")
    noremap <C-Left> :tabprevious<CR>
    noremap <C-Right> :tabnext<CR>
    " overloaded by the multiple_cursors plugin
    "noremap <C-n> :tabnew<CR>
endif

if has("gui_running")

    if has("gui_gtk2")
        set guicursor+=a:blinkon0
        set tb=tooltips
        set guioptions-=M " extreme remove menu bar
        set guioptions-=m " remove menu bar
        set guioptions-=T " remove toolbar
        set guioptions-=t " remove tearoff
        set guioptions-=r " remove right-hand scroll bar
        set guioptions-=L " remove left-hand scroll bar
        set guioptions+=c

        "set guifont=Inconsolata\ 11
        "set guifont=Source\ Code\ Pro\ Regular\ 9
        "set guifont=Meslo\ LG\ S\ 8
        "set guifont=Monaco\ 9
        "set guifont=Monospace\ 8
        set guifont=Ubuntu\ Mono\ 10
        "set guifont=Ubuntu\ Mono\ 14

    elseif has("gui_macvim")
        "set guifont=Menlo\ Regular:h11
        set guifont=InputMono:h11
    elseif has("gui_win32")
        set guifont=Consolas:h11:cANSI
    endif

    set list
    set listchars=tab:»·
    set listchars+=trail:·
    set listchars+=extends:»,precedes:«
else
    set ttyfast
endif

if has("mouse")
    set mousehide
    set mouse=a
endif

let s:settings_path = s:rc_path . '/settings'
for fpath in split(globpath(s:settings_path, '*.vim'), '\n')
    exe 'source'  fpath
endfor

" Ctrl-Enter to jump to definition in new tab
nmap <C-Enter> <C-w><C-]><C-w>T



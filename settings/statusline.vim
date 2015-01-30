"set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
"set statusline+=%{tagbar#currenttag('[%s] ','')}
"set statusline+=%{fugitive#statusline()}
set winaltkeys=no

if has('statusline')
    set laststatus=2
    set titlestring=VIM
    set titlestring+=\ [%{getcwd()}]
    set titlestring+=\ %<%F
    set titlestring+=\ %{fugitive\#statusline()}
endif

" To be modified in theme.vim
" let g:airline_theme='bubblegum'

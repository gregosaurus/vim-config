let g:goldenview__enable_default_mapping = 0
" 1. split to tiled windows
nmap <silent> <Leader>l  <Plug>GoldenViewSplit

" 2. quickly switch current window with the main pane
" and toggle back
nmap <silent> <Leader>,   <Plug>GoldenViewSwitchMain
nmap <silent> <Leader>m   <Plug>GoldenViewSwitchToggle

" 3. jump to next and previous window
nmap <silent> <Leader>n  <Plug>GoldenViewNext
nmap <silent> <Leader>p  <Plug>GoldenViewPrevious

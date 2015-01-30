"GitGutter
let g:gitgutter_map_keys = 0
let g:gitgutter_eager = 1
let g:gitgutter_realtime = 1
nmap <Leader>ga <Plug>GitGutterStageHunk
nmap <Leader>gr <Plug>GitGutterRevertHunk
nmap <Leader>gv <Plug>GitGutterPreviewHunk
nmap <Leader>gn <Plug>GitGutterNextHunk
nmap <Leader>gp <Plug>GitGutterPrevHunk

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed ='-'
let g:gitgutter_sign_removed_first_line = '⊝'
let g:gitgutter_sign_modified_removed = '⊟'

au vimrc FileType gitcommit,stgnew,stgedit set nocindent
au vimrc FileType gitcommit,stgnew,stgedit setlocal spell! spelllang=en_us

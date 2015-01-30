let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/Dropbox/Configuration/vim/ycm_default.py'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_goto_buffer_command = 'new-tab'
let g:ycm_complete_in_comments = 1
let g:ycm_key_detailed_diagnostics = '<Leader>d'
nnoremap <silent> <c-o> :YcmCompleter GoTo<CR>

" I prefer gitgutter for now than YCM signs
"let g:ycm_enable_diagnostic_signs = 0

"Ultisnips
let g:UltiSnipsExpandTrigger = "<C-j>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let s:current_path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let g:UltiSnipsSnippetsDir=join([s:current_path, '..', 'UltiSnips'], '/')

autocmd vimrc BufEnter *.snippets setf snippets
autocmd vimrc FileType snippets set noexpandtab


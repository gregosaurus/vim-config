nnoremap <silent> t :NERDTree<CR>

" Nerdtree
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
" Auto open nerd tree on startup
let g:nerdtree_tabs_open_on_gui_startup = 1
" Focus in the main content window
let g:nerdtree_tabs_focus_on_files = 1
let g:NERDTreeUpdateOnWrite = 0

"autocmd FileType nerdtree call rainbow#inactivate()

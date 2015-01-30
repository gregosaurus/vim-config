map <F2> :!find . -name "*cpp" -or -name "*.h" -or -name "*.hpp" \| xargs ctags --links=no --c-kinds=gstu -o- \| awk 'BEGIN{printf("syntax keyword Type\t")} {printf("\%s ", $$1)}END{print ""}' > .syntax.vim<CR>:exe 'so ' . '.syntax.vim'<CR>
map <F3> :exe 'so' . '~/.vim/syntax.vim'<CR>

augroup cpp
    au BufRead /usr/include/c++/*
                \ setlocal filetype=cpp |
                \ setlocal ts=8 |
                \ setlocal noexpandtab
augroup END


mkdir -p ~/.vim/tags
ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -f ~/.vim/tags/stdlibcpp /usr/include/c++/4.2.1/

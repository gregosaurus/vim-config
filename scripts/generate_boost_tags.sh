mkdir -p ~/.vim/tags

find /usr/include/boost /usr/local/include/boost/ | grep -E -o '.*\.(h|hpp)' | grep -v '/typeof/' > ~/.vim/tags/boost-filelist
ctags --sort=foldcase --c++-kinds=+p --fields=+iaS --extra=+q -f ~/.vim/tags/boost -L ~/.vim/tags/boost-filelist

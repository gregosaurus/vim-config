set nocompatible
set runtimepath+=~/.vim_config
set rtp+=~/.vim_config/vundle

:silent !mkdir -p ~/.local/share/vim/{swap,backup,undo} > /dev/null 2>&1

set directory=~/.local/share/vim/swap
set backupdir=~/.local/share/vim/backup
set undodir=~/.local/share/vim/undo


source ~/.vim_config/rc.vim

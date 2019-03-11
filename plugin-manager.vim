" Vundle plugin manager
" ===========================================================================
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" github
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'nelstrom/vim-visual-star-search'
"Plugin 'tpope/vim-markdown'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'WolfgangMehner/bash-support'
" non githuab
"Plugin 'git://git.wincent.com/command-t.git'
Plugin 'mattn/emmet-vim'
Plugin 'nickhutchinson/vim-cmake-syntax'
Plugin 'Neui/cmakecache-syntax.vim'
call vundle#end()            " required
filetype plugin indent on    " required

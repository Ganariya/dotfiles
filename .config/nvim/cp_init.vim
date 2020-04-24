set number
set termguicolors
set clipboard=unnamed

if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand("~/.cache/dein"))

call dein#add('Shougo/deoplete.nvim')
if dein#check_install()
  call dein#install()
endif
call dein#end()

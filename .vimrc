nnoremap zu zz11<C-e> 

set nowritebackup
set nobackup
set virtualedit=block
set helplang=ja
set tabstop=4
set shiftwidth=4
set autoindent
set number
set expandtab
set splitright
set clipboard=unnamed,autoselect
set noswapfile
set relativenumber

set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch
set noerrorbells
set showmatch matchtime=1
set display=lastline
set history=10000
hi Comment ctermfg=3

set expandtab
set guioptions+=a
set showmatch
set smartindent
set noswapfile
set title
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>
syntax on
set mouse=a

set autoread
set cursorline
set encoding=UTF-8
set laststatus=2

" Airline
let g:airline_theme = 'molokai'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'ervandew/supertab'
Plug 'yuttie/comfortable-motion.vim'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'
call plug#end()



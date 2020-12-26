syntax on

" indent tabj
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4

" backup
set nobackup
set nowritebackup
set noswapfile

" clipboard
set clipboard=unnamed
 
" editor
set title
set number
set showmatch matchtime=1
set display=lastline
set guioptions+=a
set cursorline
hi Comment ctermfg=3

" window
set splitright

" search
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch 

" system
set encoding=UTF-8
set laststatus=1
set autoread
set mouse=a
set noerrorbells
set history=10000

" color theme
let g:airline_theme = 'deus'
let g:airline_powerline_fonts = 1
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

" https://qiita.com/kouichi_c/items/e19ccf94b8e5ab6ed18e
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
Plug 'wakatime/vim-wakatime'
Plug 'dylanaraps/wal.vim'
call plug#end()



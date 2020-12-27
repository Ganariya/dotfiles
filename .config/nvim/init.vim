" ------------------------------
" key syntax
" ------------------------------
let mapleader="\<Space>"
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
vnoremap j gj
vnoremap k gk

" ------------------------------
" indent tabj
" ------------------------------
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4


" ------------------------------
" motion
" ------------------------------
nnoremap zu zz11<C-e>


" backup
set nobackup
set nowritebackup
set noswapfile

" ------------------------------
" clipboard
" ------------------------------
set clipboard=unnamed


" ------------------------------
" editor
" ------------------------------
syntax enable
set hidden
set title
set number
set relativenumber
set showmatch matchtime=1
set display=lastline
set guioptions+=a
set cursorline
set ruler
set laststatus=0

hi Comment ctermfg=3


" ------------------------------
" file manager
" ------------------------------
nnoremap <Leader>z<Leader> :Fern . -reveal=% -drawer -toggle -width=40<CR>


" ------------------------------
" window
" ------------------------------
set splitright


" ------------------------------
" search
" ------------------------------
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch 

" ------------------------------
" system
" ------------------------------
set encoding=UTF-8
set laststatus=1
set autoread
set mouse=a
set noerrorbells
set history=10000
set updatetime=300
set shortmess+=c


" ------------------------------
" color theme
" ------------------------------
let g:airline_theme='deus'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab


" ------------------------------
" git操作
" ------------------------------
nnoremap g[ :GitGutterPrevHunk<CR>
nnoremap g] :GitGutterNextHunk<CR>
nnoremap gh :GitGutterLineHighlightsToggle<CR>
nnoremap gp :GitGutterPreviewHunk<CR>
highlight GitGutterDelete ctermfg=red
set updatetime=500



" ------------------------------
" Plugins
" ------------------------------
call plug#begin()

" completion when tab key in insert mode
Plug 'ervandew/supertab'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" git diffusion
Plug 'airblade/vim-gitgutter'

" file manager
Plug 'preservim/nerdtree'

" file manager
" https://qiita.com/youichiro/items/b4748b3e96106d25c5bc#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%84%E3%83%AA%E3%83%BC%E3%82%92%E8%A1%A8%E7%A4%BA%E3%81%99%E3%82%8B
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'

" many syntax
Plug 'sheerun/vim-polyglot'


" beautifule scroll
Plug 'yuttie/comfortable-motion.vim'

" easy comment out
" <leader>c<Space>
Plug 'preservim/nerdcommenter'

" add icon to nerdtree
Plug 'ryanoasis/vim-devicons'

" async lint
Plug 'dense-analysis/ale'

" git操作 :G~
Plug 'tpope/vim-fugitive'

" Zenn mode like
Plug 'junegunn/goyo.vim'

" calc use time when vim
Plug 'wakatime/vim-wakatime'

" wal function
Plug 'dylanaraps/wal.vim'

" https://qiita.com/psyashes/items/1e1716a59a0dc22ea204
" highlight at nightly version
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" color theme
Plug 'ghifarit53/tokyonight-vim'

" completion ()
Plug 'cohama/lexima.vim'
Plug 'junegunn/rainbow_parentheses.vim'

" surround
Plug 'tpope/vim-surround'

" increment completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" lsp symbols
Plug 'liuchengxu/vista.vim'

" dubugger
" Plug 'puremourning/vimspector'

" format
Plug 'Chiel92/vim-autoformat'

" power-up repert
Plug 'tpope/vim-repeat'

" start-screen
Plug 'mhinz/vim-startify'

" run command asyncly :AsyncRun
Plug 'skywind3000/asyncrun.vim'


call plug#end()

colorscheme tokyonight


" ------------------------------
" coc.nvim
" ------------------------------
source ~/.config/nvim/plugin-init-vim/coc.vim

" ------------------------------
" asyncrun.vim
" ------------------------------
augroup MyGroup
   autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
augroup END

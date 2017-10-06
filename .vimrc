" ========= Plugins ==========

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'pangloss/vim-javascript'
Plug 'wincent/command-t'
Plug 'scrooloose/nerdcommenter'
Plug 'janko-m/vim-test'
Plug 'benmills/vimux'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-multiple-cursors'
Plug 'crusoexia/vim-monokai'
Plug 'Raimondi/delimitMate'
call plug#end()

" ========= Options ==========

set number
set hlsearch
set showmatch
set incsearch
set background=dark
set hidden
set backspace=indent,eol,start
set textwidth=0 smartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set ruler
set wrap
set dir=/tmp//
set scrolloff=5
set ignorecase
set smartcase
set wildignore+=*.pyc,*.o,*.class,*.lo,.git,node_modules/**,out/**
set tags +=gems.tags
set mouse=

" ========== Colors ==========

colorscheme monokai
let g:airline_theme = 'simple'

" ========== Plugin Options ==========

let g:CommandTMaxHeight = 15
let g:CommandTMatchWindowAtTop = 1
let g:CommandTCancelMap = ['<ESC>', '<C-c>']
let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']

let g:VimuxUseNearestPane = 1

let g:delimitMate_expand_cr = 1

let test#strategy = "vimux"

" ========== Shortcuts ==========

" CommandT
map <silent> <LocalLeader>ff :CommandT<CR>
map <silent> <LocalLeader>fr :CommandTFlush<CR>

nmap <silent> <leader>rf :TestNearest<CR>
nmap <silent> <leader>rb :TestFile<CR>
nmap <silent> <leader>ra :TestSuite<CR>
nmap <silent> <leader>rl :TestLast<CR>
nmap <silent> <leader>rv :TestVisit<CR>

" ========= Plugins ==========

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/fzf'
Plug 'scrooloose/nerdcommenter'
Plug 'janko-m/vim-test'
Plug 'benmills/vimux'
Plug 'terryma/vim-multiple-cursors'
Plug 'Raimondi/delimitMate'
Plug 'crusoexia/vim-monokai'
Plug 'nanotech/jellybeans.vim'
Plug 'ajh17/Spacegray.vim'
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
set visualbell
set term=screen-256color
set t_ut=

" ========== Colors ==========

colorscheme monokai

" ========== Plugin Options ==========

let g:VimuxUseNearestPane = 1

let g:delimitMate_expand_cr = 1

let g:NERDCreateDefaultMappings = 0

let test#strategy = "vimux"

" ========== Shortcuts ==========

" Vimux
nmap <silent> <leader>rf :TestNearest<CR>
nmap <silent> <leader>rb :TestFile<CR>
nmap <silent> <leader>ra :TestSuite<CR>
nmap <silent> <leader>rl :TestLast<CR>
nmap <silent> <leader>rv :TestVisit<CR>

" NerdCommenter
nmap <leader>cc <plug>NERDCommenterToggle

" FZF
nmap <leader>ff :FZF<CR>

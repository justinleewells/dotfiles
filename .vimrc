" ========= Plugins ==========

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'junegunn/fzf'
Plug 'janko-m/vim-test'
Plug 'benmills/vimux'
Plug 'terryma/vim-multiple-cursors'
Plug 'Raimondi/delimitMate'
Plug 'crusoexia/vim-monokai'
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
set backupcopy=yes

" ========== Colors ==========

colorscheme monokai

" ========== Plugin Options ==========

let g:VimuxUseNearestPane = 1

let g:delimitMate_expand_cr = 1

let g:NERDCreateDefaultMappings = 0

let test#strategy = "vimux"

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" ========== Shortcuts ==========

" Vimux
nmap <silent> <leader>rf :TestNearest<CR>
nmap <silent> <leader>rb :TestFile<CR>
nmap <silent> <leader>ra :TestSuite<CR>
nmap <silent> <leader>rl :TestLast<CR>
nmap <silent> <leader>rv :TestVisit<CR>
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>

" FZF
nmap <leader>ff :FZF<CR>

" Java
map <silent> <Leader>jc :call VimuxRunCommand("javac " . bufname("%") . " && java " . expand("%:r") . " && rm " . expand("%:r") . ".class")<CR>

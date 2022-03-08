set number
set ignorecase
set viminfo=""
set autoindent
set smartindent
set smarttab
set ruler
set autochdir
set mouse=a
" set guicursor=
set inccommand=split
set incsearch
set wildmode=longest,list,full
set relativenumber
set termguicolors
set completeopt=menuone,noselect

" Leader Key
let mapleader="/"

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Use system clipboard
set clipboard+=unnamedplus

" Move between splits
map <A-h> <C-w>h
map <A-j> <C-w>j
map <A-k> <C-w>k
map <A-l> <C-w>l

" Splits position
set splitbelow splitright

" Auto Indent
map <Tab> gg=G

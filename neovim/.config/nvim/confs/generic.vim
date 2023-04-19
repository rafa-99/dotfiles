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
set complete=.,w,b,u,t
set completeopt=menuone,noselect
set laststatus=1

" Leader Key
let mapleader="."

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

" Auto Indent
map <Tab> gg=G

" Check Spelling
map <leader>lp :set spell spelllang=pt_pt <CR>
map <leader>le :set spell spelllang=en_us <CR>
map <leader>ls :set nospell <CR>

" Custom Scripts
map <F5> :!compiler '%' $(pwd) <CR>
map <F4> :!clear && shellcheck % <CR>

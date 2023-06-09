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
set completeopt=menu,menuone,noselect
set laststatus=1

" Highlight Colors
highlight Pmenu ctermbg=none guibg=none
highlight ColorColumn ctermbg=gray guibg=gray
highlight GitSignsCurrentLineBlame ctermfg=lightgray guifg=lightgray

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Use system clipboard
set clipboard+=unnamedplus

" Splits position
set splitbelow splitright

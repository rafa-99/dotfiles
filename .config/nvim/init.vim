" Custom Settings

set number
set ignorecase
set viminfo=""
set autoindent
set smartindent
set smarttab
set ruler
set autochdir
set guicursor=
set inccommand=split
set incsearch
set wildmode=longest,list,full

" Autocommands
map <F5> :!compiler '%' <enter>
map <F4> :!clear && shellcheck % <enter>

" Keybinds for splits
" Move between splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Splits position
set splitbelow splitright

" Call plugins folder
call plug#begin('~/.config/nvim/plugged')
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
call plug#end()

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
set relativenumber

" Autocommands
map <F5> :!compiler '%' <CR>
map <F4> :!clear && shellcheck % <CR>
map <C-p> :set spell spelllang=pt_pt <CR>
map <C-e> :set spell spelllang=en_us <CR>
map <C-s> :set nospell <CR>

" Keybinds for splits
" Move between splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Splits position
set splitbelow splitright

" Plugins Configuration
" NERDTree
map <C-t> :NERDTreeToggle<CR>
" Airline Theme
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1
" Rainbow Vim
let g:rainbow_active = 1

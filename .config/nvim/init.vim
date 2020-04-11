" Call plugins folder
call plug#begin('~/.config/nvim/plugged')
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Keybinds Index
"
" F4 -> Checks shellcode "bashisms"
" F5 -> Compile current program with compiler script
" Control + P -> Runs portuguese spelling check
" Control + E -> Runs english spelling check
" Control + S -> Disables any spelling check
" Control + H,J,K,L -> Movement between splits
" Control + T -> Opens up NERDTree
" Control + Z -> Toggles Tag List from current program
" :Dox -> Runs doxygen documentation program
"

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
map <C-i> gg=G

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
" Tag List
map <C-z> :TlistToggle<CR>

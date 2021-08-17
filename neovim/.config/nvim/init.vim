" Call plugins folder
call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'airblade/vim-gitgutter'
Plug 'RRethy/vim-hexokinase'
Plug 'vim-scripts/taglist.vim'
Plug 'scrooloose/nerdtree'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'vim-scripts/DoxygenToolkit.vim'
call plug#end()

" Keybinds Index
" F4 -> Checks shellcode
" F5 -> Compile current program with compiler script
" Control + P -> Runs portuguese spelling check
" Control + E -> Runs english spelling check
" Control + S -> Disables any spelling check
" Alt + H,J,K,L -> Movement between splits
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
" set guicursor=
set inccommand=split
set incsearch
set wildmode=longest,list,full
set relativenumber
set termguicolors
set completeopt=menuone,noselect

" Autocommands
map <F5> :!compiler '%' <CR>
map <F4> :!clear && shellcheck % <CR>
map <C-p> :set spell spelllang=pt_pt <CR>
map <C-e> :set spell spelllang=en_us <CR>
map <C-s> :set nospell <CR>
map <Tab> gg=G

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Use system clipboard
set clipboard+=unnamedplus

" Keybinds for splits
" Move between splits
map <A-h> <C-w>h
map <A-j> <C-w>j
map <A-k> <C-w>k
map <A-l> <C-w>l
" Splits position
set splitbelow splitright

" Plugins Configuration
" Airline Theme
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1
" Rainbow Vim
let g:rainbow_active = 1
" Vim gitgutter
set updatetime=100
map <C-l> :GitGutterLineHighlightsToggle<CR>
map <C-h> :GitGutterPreviewHunk<CR>
map <C-g> :GitGutterToggle<CR>
" Vim Hexokinase
let g:Hexokinase_highlighters = ['backgroundfull']
" Tag List
map <C-t> :TlistToggle<CR>
" NERDTree
map <C-n> :NERDTreeToggle<CR>
" DoxygenToolkit
map <C-c> :Dox<CR>

" LSP Configuration
lua << EOF
require'lspconfig'.clangd.setup{}
require'lspconfig'.pylsp.setup{}
require'lspconfig'.tsserver.setup{}
EOF

"" LSP Autocomplete
let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.resolve_timeout = 800
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true
let g:compe.source.ultisnips = v:true
let g:compe.source.luasnip = v:true
let g:compe.source.emoji = v:true

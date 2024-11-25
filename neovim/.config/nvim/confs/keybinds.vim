" Leader Key
let mapleader=" "

" Limiter Column Color
" https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=bdc48fa11e46f867ea4d75fa59ee87a7f48be144
nnoremap <leader>cc :set colorcolumn=100 <CR>

" Move between splits
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Auto Indent
nnoremap <Tab> gg=G

" Check Spelling
nnoremap <leader>lp :set spell spelllang=pt_pt <CR>
nnoremap <leader>le :set spell spelllang=en_us <CR>
nnoremap <leader>ls :set nospell <CR>

" Custom Scripts
nnoremap <F5> :!compiler '%' $(pwd) <CR>
nnoremap <F4> :!clear && shellcheck % <CR>

" Git Hunk Preview
nnoremap <leader>c :Gitsigns preview_hunk_inline<CR>

" NvimTree
nnoremap <leader>f :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>

" TeleScope
nnoremap <leader>t <cmd>Telescope find_files<cr>

" Move between buffers
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprev<CR>
nnoremap <C-w> :bdel<CR>

lua << EOF
	-- Rename Symbol
	vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })
EOF

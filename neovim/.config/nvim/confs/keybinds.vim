" Leader Key
let mapleader="."

" Limiter Column Color
" https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=bdc48fa11e46f867ea4d75fa59ee87a7f48be144
map <leader>cc :set colorcolumn=100 <CR>

" Move between splits
map <A-h> <C-w>h
map <A-j> <C-w>j
map <A-k> <C-w>k
map <A-l> <C-w>l

" Auto Indent
map <Tab> gg=G

" Check Spelling
map <leader>lp :set spell spelllang=pt_pt <CR>
map <leader>le :set spell spelllang=en_us <CR>
map <leader>ls :set nospell <CR>

" Custom Scripts
map <F5> :!compiler '%' $(pwd) <CR>
map <F4> :!clear && shellcheck % <CR>

" Git Hunk Preview
map <leader>c :Gitsigns preview_hunk_inline<CR>

" NvimTree
nnoremap <leader>n :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>f :NvimTreeFindFile<CR>

" TeleScope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua <<EOF
	-- Documentation view on hover
	vim.keymap.set("n", "K", require("hover").hover, {desc = "hover.nvim"})

	-- Rename Symbol
	vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })
EOF

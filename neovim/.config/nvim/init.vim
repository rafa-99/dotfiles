" Plugin Imports
call plug#begin('~/.config/nvim/plugged')

" NVimTree
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
" AutoPairs
Plug 'jiangmiao/auto-pairs'
" TeleScope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.*' }
" NvimLSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/nvim-cmp'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind.nvim'
" Git Signs
Plug 'lewis6991/gitsigns.nvim'
" Hover
Plug 'lewis6991/hover.nvim'
" LuaLine
Plug 'nvim-lualine/lualine.nvim'
" Bufferline
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
call plug#end()

" Configurations
for f in split(glob('~/.config/nvim/confs/*.vim'), '\n')
	exe 'source' f
endfor

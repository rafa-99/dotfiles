" Plugin Imports
call plug#begin('~/.config/nvim/plugged')

" AutoPairs
Plug 'jiangmiao/auto-pairs'
" LuaLine
Plug 'nvim-lualine/lualine.nvim'
call plug#end()

" Configurations
for f in split(glob('~/.config/nvim/confs/*.vim'), '\n')
	exe 'source' f
endfor

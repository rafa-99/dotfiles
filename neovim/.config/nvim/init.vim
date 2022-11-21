" Plugin Imports
call plug#begin('~/.config/nvim/plugged')

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" GitGutter
Plug 'airblade/vim-gitgutter'
" GitMessenger
Plug 'rhysd/git-messenger.vim'
" NVimTree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
" WhichKey
Plug 'folke/which-key.nvim'
" Hexokinase
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
" AutoPairs
Plug 'jiangmiao/auto-pairs'
" TagList
Plug 'vim-scripts/taglist.vim'

call plug#end()

" Configurations
" Generic
source ~/.config/nvim/confs/generic.vim
" CoC
source ~/.config/nvim/confs/coc.vim
" GitGutter
source ~/.config/nvim/confs/gitgutter.vim
" GitMessenger
source ~/.config/nvim/confs/gitmessenger.vim
" NVimTree
source ~/.config/nvim/confs/nvimtree.vim
" WhichKey
source ~/.config/nvim/confs/whichkey.vim
" Hexokinase
source ~/.config/nvim/confs/hexokinase.vim
" Taglist
source ~/.config/nvim/confs/taglist.vim

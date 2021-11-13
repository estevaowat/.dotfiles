set tabstop=4 softtabstop=4 
set shiftwidth=4
set expandtab
set smartindent
set nu
set hidden
set smartcase
set nowrap
set colorcolumn=80
set signcolumn=yes

call plug#begin('~/.vim/plugged')
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'neovim/nvim-lspconfig'
call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

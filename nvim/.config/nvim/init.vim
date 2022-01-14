set tabstop=4 
set softtabstop=4 
set shiftwidth=4
set expandtab
set smartindent
set nu
set scrolloff=8
set incsearch
set hidden
set smartcase
set nowrap
set colorcolumn=80
set signcolumn=yes
set mouse=a

call plug#begin('~/.vim/plugged')
   Plug 'nvim-telescope/telescope.nvim'
   Plug 'gruvbox-community/gruvbox' " Color scheme
   Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
   Plug 'https://github.com/vim-airline/vim-airline' " Status bar
   Plug 'neovim/nvim-lspconfig'
call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

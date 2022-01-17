" Plugins --------------
call plug#begin('~/.vim/plugged')
   Plug 'nvim-telescope/telescope.nvim'
   Plug 'gruvbox-community/gruvbox' " Color scheme
   Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
   Plug 'https://github.com/vim-airline/vim-airline' " Status bar
   Plug 'neovim/nvim-lspconfig'
   Plug 'nvim-lua/plenary.nvim'
   Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
   Plug 'kyazdani42/nvim-web-devicons'
call plug#end()


" -------------- Settings --------------
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
set autoread
colorscheme gruvbox
highlight Normal guibg=none



" -- telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

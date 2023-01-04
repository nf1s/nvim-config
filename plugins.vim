filetype plugin on
call plug#begin('~/.local/share/nvim/plugged')

" Language server
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git
Plug 'lewis6991/gitsigns.nvim'

" Theme
Plug 'morhetz/gruvbox'
Plug 'Mofiqul/dracula.nvim'
Plug 'navarasu/onedark.nvim'
Plug 'rose-pine/neovim'

" Status Line
Plug 'liuchengxu/eleline.vim'

" Vim session and .undodir manager
Plug 'thaerkh/vim-workspace'

" Vimwiki
Plug 'vimwiki/vimwiki'

" Highlight Yank
Plug 'machakann/vim-highlightedyank'

" Vim table mode
Plug 'dhruvasagar/vim-table-mode'

" Nerd Commenter
Plug 'scrooloose/nerdcommenter'

" devicons -> file icons
Plug 'ryanoasis/vim-devicons'

" Markdown Preview
Plug 'JamshedVesuna/vim-markdown-preview'

" Python pydocstring
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }

" Vim Terraform
Plug 'hashivim/vim-terraform'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Vim just
Plug 'NoahTheDuke/vim-just'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'fannheyward/telescope-coc.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Octo
Plug 'kyazdani42/nvim-web-devicons'
Plug 'pwntester/octo.nvim'

call plug#end()

filetype plugin on
call plug#begin('~/.local/share/nvim/plugged')

" Language server
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Tmux Navigator
Plug 'christoomey/vim-tmux-navigator'

" Git
Plug 'lewis6991/gitsigns.nvim'

" Theme
Plug 'rose-pine/neovim'

" Status Line
Plug 'nvim-lualine/lualine.nvim'

" Tint
Plug 'levouh/tint.nvim'

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

" Devicons -> file icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

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
Plug 'AckslD/nvim-neoclip.lua'

" Fine cmd Line
Plug 'MunifTanjim/nui.nvim'
Plug 'VonHeikemen/fine-cmdline.nvim'
Plug 'VonHeikemen/searchbox.nvim'

" ChatGPT
Plug 'jackMort/ChatGPT.nvim'

call plug#end()

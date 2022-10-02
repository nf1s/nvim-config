set encoding=utf-8
set number
set noswapfile
set clipboard+=unnamed
set spell
set spelllang=en
set spellfile=$HOME/.config/nvim/spell/en.utf-8.add

let mapleader=" "
let g:indent_guides_enable_on_vim_startup = 1

filetype plugin on

call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'vim-syntastic/syntastic'
Plug 'hashivim/vim-terraform'
Plug 'sheerun/vim-polyglot'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'liuchengxu/eleline.vim'
Plug 'tpope/vim-fugitive'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'kylef/apiblueprint.vim'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plug 'machakann/vim-highlightedyank'
Plug 'dhruvasagar/vim-table-mode'
Plug 'thaerkh/vim-workspace'
Plug 'vimwiki/vimwiki'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'pwntester/octo.nvim'
Plug 'prabirshrestha/vim-lsp'
call plug#end()

" general config
colorscheme gruvbox
syntax on

au BufNewFile,BufRead *.js,*.jsx,*.html,*.json,*.css,*.j2,*jinja2,*.tmpl,*.md set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.vim,*.tmpl set tabstop=4 softtabstop=4 shiftwidth=4
au BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

nmap <leader>_ :split<Esc>
nmap <leader>I :vert split<Esc>

nmap <A-Up> :m-2<CR>
nmap <A-Down> :m+1<CR>
nmap <leader>y :%y<CR>
nmap <leader><Right> :wincmd l<CR>
nmap <leader><Left> :wincmd h<CR>
nmap <leader><Up> :wincmd k<CR>
nmap <leader><Down> :wincmd j<CR>
nmap <leader>w :wincmd w<CR>
nmap <leader><leader> :w<CR>
nmap <leader>q :qa<CR>
nmap <leader>t :tabn<CR>
nmap <leader>T :tabp<CR>

" Octo
lua require"octo".setup()

" reflow current line
map Q gqq
vmap Q gqq

" vim-workspace
let g:workspace_autocreate = 1
let g:workspace_session_directory = $HOME . '/.config/nvim/workspaces/'

" Telescope configuration
nnoremap \ <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>f <cmd>Telescope live_grep hidden=true<cr>

" Vim Table Mode
let g:table_mode_header_fillchar='='
let g:table_mode_corner='|'

nmap <leader>tm :TableModeToggle<CR>

" Highlightedyank config
if !exists('##TextYankPost')
  map y <Plug>(highlightedyank)
endif
let g:highlightedyank_highlight_duration = 500

" eleine config
set laststatus=2
let g:airline_powerline_fonts = 1

" Indent line config
let g:indentLine_setColors = 200
let g:indentLine_conceallevel = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" syntastic config
let g:syntastic_python_python_exec = 'python3.10'

vmap ''' <plug>NERDCommenterToggle
nmap ''' <plug>NERDCommenterToggle

" markdown config
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_temp_file=1
let vim_markdown_preview_github=1
let g:vim_markdown_folding_disabled = 1

" apiblueprint config
autocmd FileType apiblueprint nnoremap ‹ :call GenerateRefract()<cr>

" docstring config
let g:pydocstring_formatter = 'google'
nmap <silent><leader>ds  <Plug>(pydocstring)

" terraform config
let g:terraform_align=1
let g:terraform_fmt_on_save=1

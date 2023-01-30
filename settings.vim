set encoding=utf-8
set number
set noswapfile
set clipboard=unnamed
set spell
set spelllang=en
set spellfile=$HOME/.config/nvim/spell/en.utf-8.add
set mouse=
set cursorline
set cursorlineopt=number
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark

hi CursorLineNr guifg=#af00af
xnoremap r "_dP

let mapleader=" "
let g:indent_guides_enable_on_vim_startup = 1

au BufNewFile,BufRead *.js,*.jsx,*.html,*.json,*.css,*.j2,*jinja2,*.tmpl,*.md,Makefile,Justfile,*zsh,*sh set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.vim,*.tmpl set tabstop=4 softtabstop=4 shiftwidth=4

nmap <C-_> :split<Esc>
nmap <C-i> :vert split<Esc>

nmap œ o<Esc>
nmap Œ O<Esc>
nmap <A-Up> :m-2<CR>
nmap <A-Down> :m+1<CR>
nmap <leader>y :%y<CR>
nmap <leader><leader> :w<CR>
nmap <leader>q :qa<CR>
nmap <leader>t :tabn<CR>
nmap <leader>T :tabp<CR>

"Reflow current line
map Q gqq
vmap Q gqq

" vim tmux
let g:tmux_navigator_no_mappings = 1

nmap <C-Right> :wincmd l<CR>
nmap <C-Left> :wincmd h<CR>
nmap <C-Up> :wincmd k<CR>
nmap <C-Down> :wincmd j<CR>
nmap <C-w> :wincmd w<CR>

noremap <silent> <C-Left> :<C-U>TmuxNavigateLeft<cr>
noremap <silent> <C-Down> :<C-U>TmuxNavigateDown<cr>
noremap <silent> <C-Up> :<C-U>TmuxNavigateUp<cr>
noremap <silent> <C-Right> :<C-U>TmuxNavigateRight<cr>
noremap <silent> <C-l> :<C-U>TmuxNavigatePrevious<cr>

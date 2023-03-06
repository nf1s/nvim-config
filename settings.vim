set encoding=utf-8
set number
set noswapfile
set clipboard=unnamed
set mouse=
set cursorline
set cursorlineopt=number
set nocompatible

syntax on

set background=dark

hi CursorLineNr guifg=#af00af
xnoremap r "_dP

let mapleader=" "
let g:indent_guides_enable_on_vim_startup = 1

au BufNewFile,BufRead *.js,*.jsx,*.html,*.json,*.css,*.j2,*jinja2,*.wiki,*.tmpl,*.md,Makefile,Justfile,*zsh,*.sh set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.vim,*.tmpl,Justfile set tabstop=4 softtabstop=4 shiftwidth=4

nmap <C-_> <cmd>split<CR>
nmap <C-i> <cmd>vert split<CR>

nmap œ o<Esc>
nmap Œ O<Esc>
nmap <A-Up> <cmd>m-2<CR>
nmap <A-Down> <cmd>m+1<CR>
nmap <leader>y <cmd>%y<CR>
nmap <leader><leader> <cmd>w<CR>
nmap <leader>q <cmd>qa<CR>
nmap <leader>t <cmd>tabn<CR>
nmap <leader>T <cmd>tabp<CR>

"Reflow current line
map Q gqq
vmap Q gqq

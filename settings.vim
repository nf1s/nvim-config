set encoding=utf-8
set number
set noswapfile
set clipboard=unnamed
set spell
set spelllang=en
set spellfile=$HOME/.config/nvim/spell/en.utf-8.add

let mapleader=" "
let g:indent_guides_enable_on_vim_startup = 1
syntax on

au BufNewFile,BufRead *.js,*.jsx,*.html,*.json,*.css,*.j2,*jinja2,*.tmpl,*.md set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.vim,*.tmpl set tabstop=4 softtabstop=4 shiftwidth=4
au BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

nmap <leader>_ :split<Esc>
nmap <leader>I :vert split<Esc>

nmap œ o<Esc>
nmap Œ O<Esc>
nmap ++ :m-2<CR>
nmap -- :m+1<CR>
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

" reflow current line
map Q gqq
vmap Q gqq
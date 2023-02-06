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

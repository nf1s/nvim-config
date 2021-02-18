" fzf-sessions config
let g:fzf_session_path =  $HOME . '/.vim/sessions'
nnoremap <leader>s :Sessions<CR>

function! MakeSession()
  let b:sessiondir = $HOME . "/.vim/sessions/" 
  let b:filename = b:sessiondir . fnamemodify(getcwd(), ':t')
  if isdirectory(getcwd() . "/.git")
    exe "mksession! " . b:filename
  endif
endfunction

function! LoadSession()
  let b:sessiondir = $HOME . "/.vim/sessions/" 
  let b:sessionfile = b:sessiondir . fnamemodify(getcwd(), ':t')
  echo b:sessionfile
  if (filereadable(b:sessionfile))
    exe "source " b:sessionfile
  else
    echo "No session loaded."
  endif
endfunction

" Adding automatons for when entering or leaving Vim
au VimEnter * nested :call LoadSession()
au VimLeave * :call MakeSession()

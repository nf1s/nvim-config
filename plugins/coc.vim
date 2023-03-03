" coc config
let g:coc_global_extensions = [
  \ 'coc-pyright',
  \ 'coc-go',
  \ 'coc-diagnostic',
  \ 'coc-rust-analyzer',
  \ 'coc-html',
  \ 'coc-yaml',
  \ 'coc-spell-checker',
  \ 'coc-pairs',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-markdownlint',
  \ ]

inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

command! -nargs=0 Prettier :CocCommand prettier.formatFile
command! -nargs=0 Isort :CocCommand pyright.organizeimports
command! -nargs=0 MdFix :CocCommand markdownlint.fixAll

autocmd BufWritePost *.py :silent !Isort %
autocmd BufWritePost *.js,*.ts,*.json,*.yaml :silent !Prettier %
autocmd BufWritePost *.md :silent !MdFix %
autocmd BufWritePre *.go  :silent call CocAction('runCommand', 'editor.action.organizeImport')

nmap <silent><leader>d <Plug>(coc-definition)
nmap <silent><leader>w  <Plug>(coc-type-definition)
nmap <silent><leader>i <Plug>(coc-implementation)
nmap <silent><leader>r <Plug>(coc-references)
nmap <silent><leader>e <Plug>(coc-rename)

vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

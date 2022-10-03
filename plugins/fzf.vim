" fzf config
nmap \ :Files<cr>
"nnoremap <leader>s :call fzf#run({'source': prosession#ListSessions(), 'sink': 'Prosession','options':'--preview', 'window': {'width':0.9, 'height':0.6, 'relative': v:true}})<cr>

" Rg config
nmap <leader>f :Rg<Space>

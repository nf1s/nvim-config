local opt = vim.opt

opt.encoding = "utf-8"
opt.number = true
opt.swapfile = false
opt.clipboard = "unnamed"
opt.mouse = ""
opt.cursorline = true
opt.cursorlineopt = "number"
opt.relativenumber = true
opt.hlsearch = true
opt.incsearch = true
opt.background = "dark"

vim.o.shada = ""

-- Define highlighting for CursorLineNr using vim.cmd
vim.cmd('highlight CursorLineNr guifg=#af00af')

-- Create a visual mode key mapping for xnoremap
vim.api.nvim_set_keymap('x', 'r', '"_dP', { noremap = true })


-- Highlights
vim.cmd("filetype plugin on")
vim.cmd("syntax on")

vim.g.mapleader = ' '
vim.g.indent_guides_enable_on_vim_startup = 1


-- Ansible file type
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*/roles/*.y*ml",
  command = "set filetype=yaml.ansible",
})

-- Github Actions file type
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*/.github/*.y*ml",
  command = "set filetype=yaml.github",
})


-- Justfile
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "[[\v(Justfile|justfile|JUSTFILE)]]",
  command = "set filetype=just",
})


-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd([[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]])

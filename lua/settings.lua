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

vim.o.background = "dark"
vim.o.shada = ""

-- Create a visual mode key mapping for xnoremap
vim.api.nvim_set_keymap('x', 'r', '"_dP', { noremap = true })

-- Highlights
vim.cmd("filetype plugin on")
vim.cmd("syntax on")

vim.g.mapleader = ' '
vim.g.indent_guides_enable_on_vim_startup = 1


vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*lua,*.js,*.jsx,*.html,*.json,*.css,*.j2,*.jinja2,*.wiki,*.tmpl,*.md,Makefile,Justfile,*.zsh,*.sh",
  command = "set tabstop=2 softtabstop=2 shiftwidth=2 expandtab",
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.vim,*.tmpl,Justfile",
  command = "set tabstop=4 softtabstop=4 shiftwidth=4",
})


-- highlight yanked text for 300ms using the "Visual" highlight group
vim.cmd([[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=300})
augroup END
]])

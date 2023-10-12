return {
  "neovim/nvim-lspconfig",
  dependencies = {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  },
  config = function()
	require("mason").setup()
	require("mason-lspconfig").setup({
	    ensure_installed = { "lua_ls", "rust_analyzer", "gopls",  "pyright" },
	})
	local on_attach = function(_,_)
	    vim.keymap.set('n', '<leader>e', vim.lsp.buf.rename, {})
	    vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, {})
	    vim.keymap.set('n', '<leader>r', require("telescope.builtin").lsp_references, {})
	    vim.keymap.set('n', '<leader>i', vim.lsp.buf.implementation, {})
	end
	require("lspconfig").pyright.setup({
		on_attach = on_attach,
		filetypes = {"python"}
	})
	require("lspconfig").lua_ls.setup({
		on_attach = on_attach,
		filetypes = {"lua"}
	})

  end,
}

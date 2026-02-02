return {
  "echasnovski/mini.indentscope",
  config = function()
    vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = "#b93573" })
    require("mini.indentscope").setup()
  end,
}

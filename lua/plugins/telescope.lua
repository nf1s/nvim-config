return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.3",
  dependencies = {
    "nvim-lua/plenary.nvim",
  }
  ,
  config = function()
	require('telescope').setup {
	  defaults = {
		layout_strategy = "vertical",
    layout_config = {
      vertical = { width = 0.75 },
      horizontal = { width = 0.9 },
		prompt_position = "top",
			}
		},
	}

	local builtin = require("telescope.builtin")
	vim.keymap.set("n", "<leader>f", builtin.find_files, {})
	vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
	vim.keymap.set("n", "<leader>s", builtin.spell_suggest, {})

  end,
}

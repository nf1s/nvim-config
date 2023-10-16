return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.3",
  dependencies = {
    "nvim-lua/plenary.nvim",
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  }
  ,
  config = function()
	require('telescope').setup {
    pickers = {
      find_files = {
        find_command = {
          "rg",
          "--files",
          "--hidden",
          "--follow",
          "-g",
          "!.git",
          "-g",
          "!node_modules",
          "-g",
          "!.venv",
        },
      },
    },
	  defaults = {
		layout_strategy = "vertical",
    layout_config = {
      vertical = { width = 0.75 },
      horizontal = { width = 0.9 },
		prompt_position = "top",
			}
		},
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    },
  }
	}

  require('telescope').load_extension('fzf')
	local builtin = require("telescope.builtin")
	vim.keymap.set("n", "<leader>f", builtin.find_files, {})
	vim.keymap.set("n", "<leader>g", builtin.live_grep, {})
	vim.keymap.set("n", "<leader>s", builtin.spell_suggest, {})

  end,
}

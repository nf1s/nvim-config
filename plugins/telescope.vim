" Telescope configuration
lua << EOF
require('telescope').setup {
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
    coc = {
        prefer_locations = true, -- always use Telescope locations to preview definitions/declarations/implementations etc
    }
  }
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('coc')
require('telescope').load_extension('media_files')

require('neoclip').setup()
require('telescope').load_extension('neoclip')

vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>Telescope find_files hidden=true<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>g', '<cmd>Telescope live_grep hidden=true<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>r', '<cmd>Telescope coc references<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>n', '<cmd>Telescope neoclip unnamed<CR>', { noremap = true })
EOF

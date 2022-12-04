" Telescope configuration
lua << EOF
require('telescope').setup {
  defaults = {
    layout_config = {
      vertical = { width = 0.9 },
      horizontal = { width = 0.9 },
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
EOF
nnoremap <leader>f <cmd>Telescope find_files hidden=true layout_strategy=vertical<cr>
nnoremap <leader>g <cmd>Telescope live_grep hidden=true layout_strategy=vertical<cr>
nnoremap <leader>r <cmd>Telescope coc references layout_strategy=vertical<cr>

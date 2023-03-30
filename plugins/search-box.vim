lua << EOF
require('searchbox').setup({
  defaults = {
    reverse = false,
    exact = false,
    prompt = ' ',
    modifier = 'disabled',
    confirm = 'off',
    clear_matches = true,
    show_matches = false,
  },
  popup = {
    relative = 'editor',
    position = {
      row = '50%',
      col = '50%',
    },
	size = {
      width = '60%',
    },
    border = {
      style = 'rounded',
      text = {
        top = ' Search ',
        top_align = 'left',
      },
    },
    win_options = {
      winhighlight = 'Normal:Normal,FloatBorder:Normal',
    },
  },
})
vim.api.nvim_set_keymap('n', '/', '<cmd>SearchBoxIncSearch<CR>', {noremap = true})
EOF

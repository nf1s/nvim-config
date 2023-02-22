lua << EOF
require('fine-cmdline').setup({
  cmdline = {
    enable_keymaps = true,
    smart_history = true,
    prompt = ' ',
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
      style = 'rounded',
    border = {
      text = {
        top = ' command ',
        top_align = 'left',
      },
    },
    win_options = {
      winhighlight = 'Normal:Normal,FloatBorder:FloatBorder',
    },
  },
})

vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
EOF

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-context",
    "windwp/nvim-ts-autotag",
    "hiphish/rainbow-delimiters.nvim",
  },
  config = function()
	require('nvim-treesitter.configs').setup {
	  -- A list of parser names, or "all"
	  ensure_installed = { "go", "lua", "python", "rust", "yaml"  },

	  -- Install parsers synchronously (only applied to `ensure_installed`)
	  sync_install = false,

	  -- Automatically install missing parsers when entering buffer
	  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	  auto_install = true,

	  highlight = {
	    enable = true,
	    additional_vim_regex_highlighting = false,
	  },
	}
    require("treesitter-context").setup()
  end,
}

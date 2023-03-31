return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "nvim-pack/nvim-spectre",
    lazy = false
  },

  {
    "akinsho/git-conflict.nvim",
    config = function() require('git-conflict').setup() end,
    lazy = false
  },
}

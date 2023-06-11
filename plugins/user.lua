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
  --
  {
    "nvim-pack/nvim-spectre",
    lazy = false
  },

  {
    "mbbill/undotree",
    lazy = false
  },

  {
    "akinsho/git-conflict.nvim",
    config = function() require('git-conflict').setup({}) end,
    lazy = false
  },

  {
    "tpope/vim-repeat",
    lazy = false
  },

  {
    "ggandor/lightspeed.nvim",
    lazy = false
  },

  {
    'Exafunction/codeium.vim',
    lazy = false,
    config = function()
      vim.keymap.set("i", "<C-l>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
      vim.keymap.set("i", "<c-;>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
      vim.keymap.set("i", "<c-,>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
      vim.keymap.set("i", "<c-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true })
      vim.keymap.set("n", "<leader>;", function()
        if vim.g.codeium_enabled == true then
          vim.cmd "CodeiumDisable"
        else
          vim.cmd "CodeiumEnable"
        end
      end, { noremap = true, desc = "Toggle Codeium active" })
    end,
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  }
}

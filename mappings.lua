-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>fS"] = { '<cmd>lua require("spectre").open()<CR>', desc = "Open Spectre" },
    ["<leader>lm"] = { '<cmd>lua vim.lsp.buf.implementation()<CR>', desc = "Implementation of current symbol" }, -- already mapped to gI, but useful to see it in the LSP menu too

    ["<leader>U"] = { vim.cmd.UndotreeToggle, desc = "Undotree Toggle" },

    ["<C-h"] = { "<cmd> TmuxNavigateLeft<cr>", desc = "Tmux Navigate Left" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<cr>", desc = "Tmux Navigate Down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<cr>", desc = "Tmux Navigate Up" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<cr>", desc = "Tmux Navigate Right" },

    ["<C-u>"] = { "<C-u>zz" },
    ["<C-d>"] = { "<C-d>zz" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["J"] = { ":m '>+1<cr>gv=gv", desc = "Move selected lines down" },
    ["K"] = { ":m '<-2<cr>gv=gv", desc = "Move selected lines up" },
  },
  x = {
    ["<leader>p"] = { "\"_dP", desc = "Paste from clipboard" },
  },
}

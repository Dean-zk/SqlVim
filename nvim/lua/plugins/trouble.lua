return {
 "folke/trouble.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 opts = {
    height = 5,
    mode = "document_diagnostics",
      -- or leave it empty to use the default settings
  -- refer to the configuration section below
 },
  mappings = {
    vim.keymap.set("n", "<leader>xt", function() require("trouble").toggle() end),
    vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end),
    vim.api.nvim_set_keymap('n', '<leader>xf', '<cmd>Trouble<cr>', { noremap = true, silent = true })
  },
}

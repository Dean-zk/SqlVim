return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        no_italic = true,
      })

      vim.cmd.colorscheme "catppuccin"
    end
  },
  {
    {
      "rose-pine/neovim",
      name = "rose-pine",
      event = "VeryLazy",
      config = function()
        require("rose-pine").setup({
          variant = "main", -- auto, main, moon, or dawn

          styles = {
            italic = false,
          },
        })
      end
    },
    {
      "ellisonleao/gruvbox.nvim",
      event = "VeryLazy",
      config = function()
        require("gruvbox").setup({
          italic = {
            strings = false,
            emphasis = false,
            comments = false,
            operators = false,
            folds = false,
          },
          contrast = "soft", -- can be "hard", "soft" or empty string
          transparent_mode = false,
        })
      end
    },
  }
}

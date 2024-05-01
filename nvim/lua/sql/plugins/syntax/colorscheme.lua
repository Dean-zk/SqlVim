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
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        },
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
          variant = "auto", -- auto, main, moon, or dawn
          dark_variant = "main", -- main, moon, or dawn

          enable = {
            terminal = true,
            legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
            migrations = true, -- Handle deprecated options automatically
          },

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
          terminal_colors = true, -- add neovim terminal colors
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

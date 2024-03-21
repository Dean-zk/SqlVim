return {
  {"nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
}

--[[ensure_installed = { 
          "c", "cpp", "lua", "javascript", "typescript",
         "haskell", "c_sharp", "python", "rust" 
        }]]--

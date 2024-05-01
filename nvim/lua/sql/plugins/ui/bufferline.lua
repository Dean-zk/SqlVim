return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", "echasnovski/mini.bufremove"},
    version = "*",
    event = "VeryLazy",
    keys = {
        { "<leader>bd", "<Cmd>bd<CR>", desc = "delete open buffer" },
        { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
        { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
        { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete Other Buffers" },
        { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
        { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
        { "<S-tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
        { "<tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
  },
  opts = {
    options = {
      separator_style = "default",
      -- stylua: ignore
      close_command = function(n) require("mini.bufremove").delete(n, false) end,
      -- stylua: ignore
      right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,
      diagnostics = "nvim_lsp",
      always_show_bufferline = false,
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local icons = {
          error = " ",
          warning = " ",
          other = ""
        }
        local symbol = diagnostics_dict.error and icons.error
        or diagnostics_dict.warning and icons.warning
        or icons.other
        return " " .. symbol
      end,
      offsets = {
        {
          filetype = "neo-tree",
          text = "Neo-tree",
          highlight = "Directory",
          text_align = "left",
        },

      },
      custom_areas = {
        right = function()
          local result = {}
          local seve = vim.diagnostic.severity
          local error = #vim.diagnostic.get(0, {severity = seve.ERROR})
          local warning = #vim.diagnostic.get(0, {severity = seve.WARN})
          local info = #vim.diagnostic.get(0, {severity = seve.INFO})
          local hint = #vim.diagnostic.get(0, {severity = seve.HINT})

          if error ~= 0 then
            table.insert(result, {text = " " .. error, fg = "#EC5241"})
          end

          if warning ~= 0 then
            table.insert(result, {text = " " .. warning, fg = "#EFB839"})
          end

          if hint ~= 0 then
            table.insert(result, {text = "  " .. hint, fg = "#A3BA5E"})
          end

          if info ~= 0 then
            table.insert(result, {text = "  " .. info, fg = "#7EA9A7"})
          end
          return result
        end,
      }
    },
  },
  config = function(_, opts)
        require("bufferline").setup(opts)
        -- Fix bufferline when restoring a session
        vim.api.nvim_create_autocmd("BufAdd", {
            callback = function()
                vim.schedule(function()
                    pcall(nvim_bufferline)
                end)
            end,
        })
    end,
}

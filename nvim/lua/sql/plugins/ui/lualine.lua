return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    local defaulticons = {
      default = { left = "", right = " " },
      round = { left = "", right = "" },
      block = { left = "█", right = "█" },
      arrow = { left = "", right = "" },
    }
    
    local function mode_component()
      local mode = vim.api.nvim_get_mode().mode
      local mode_map = {
        ["n"] = { "NORMAL", "St_NormalMode", "_normal" },
        ["niI"] = { "NORMAL i", "St_NormalMode", "_normal" },
        ["niR"] = { "NORMAL r", "St_NormalMode", "_normal" },
        ["niV"] = { "NORMAL v", "St_NormalMode", "_normal" },
        ["no"] = { "N-PENDING", "St_NormalMode", "_normal" },
        ["i"] = { "INSERT", "St_InsertMode", "_insert" },
        ["ic"] = { "INSERT (completion)", "St_InsertMode", "_insert" },
        ["ix"] = { "INSERT completion", "St_InsertMode", "_insert" },
        ["t"] = { "TERMINAL", "St_TerminalMode", "_terminal" },
        ["nt"] = { "NTERMINAL", "St_NTerminalMode", "_terminal" },
        ["v"] = { "VISUAL", "St_VisualMode", "_visual" },
        ["V"] = { "V-LINE", "St_VisualMode", "_visual" },
        ["Vs"] = { "V-LINE (Ctrl O)", "St_VisualMode", "_visual" },
        [""] = { "V-BLOCK", "St_VisualMode", "_visual" },
        ["R"] = { "REPLACE", "St_ReplaceMode", "_replace" },
        ["Rv"] = { "V-REPLACE", "St_ReplaceMode", "_replace" },
        ["s"] = { "SELECT", "St_SelectMode", "_replace" },
        ["S"] = { "S-LINE", "St_SelectMode", "_replace" },
        [""] = { "S-BLOCK", "St_SelectMode", "_replace" },
        ["c"] = { "COMMAND", "St_CommandMode", "_command" },
        ["cv"] = { "COMMAND", "St_CommandMode", "_command" },
        ["ce"] = { "COMMAND", "St_CommandMode", "_command" },
        ["r"] = { "PROMPT", "St_ConfirmMode", "_command" },
        ["rm"] = { "MORE", "St_ConfirmMode", "_command" },
        ["r?"] = { "CONFIRM", "St_ConfirmMode", "_command" },
        ["x"] = { "CONFIRM", "St_ConfirmMode", "_command" },
        ["!"] = { "SHELL", "St_TerminalMode", "_terminal" },
      }
      local mode_info = mode_map[mode]
      local current_mode = "%#" .. mode_info[2] .. "#" .. "  " .. mode_info[1]
      local mode_sep1 = "%#" .. mode_info[2] .. "Sep" .. "#" .. defaulticons.arrow.right

      return current_mode .. mode_sep1 .. "%#St_EmptySpace" .. lualine_hl .. "#" .. defaulticons.arrow.right
    end

    lualine.setup({
      sections = {
        lualine_a = {"mode"},
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          mode_component,
          { "filetype" },
          { "filename", file_status = true },
          { "branch" },
        },
      },
    })
  end,
}

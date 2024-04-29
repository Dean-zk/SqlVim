return
{
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
      --[[ things you want to change go here]]
    },
    config = function()
      require("toggleterm").setup({
        hide_numbers = true,
        autochdir = false, -- when neovim changes it current directory the terminal will change it's own when next it's opened
        direction = "float",
        close_on_exit = true, --close when the terminal proccess closes
        shade_terminals = false,
        shell = vim.o.shell, --setting the standard vim shell. 

        start_in_insert = true,
        insert_mappings = true, -- whether or not the open mapping applies in insert mode
        terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals

        highlights = {
          NormalFloat = {
            link = "Normal"
          },
          FloatBorder = {
            guifg = "#89b4fa",
          }
        },
        float_opts = {
          border = 'rounded',
        }
      })

      --local Terminal  = require('toggleterm.terminal').Terminal
      vim.keymap.set('n', '<leader>tt', '<cmd>:ToggleTerm<CR>')
      In = vim.fn

      function Open_terminal(mode, index)
        vim.cmd(index .."ToggleTerm direction=".. mode)
      end

      -- Horizontal mode
      vim.keymap.set('n', '<leader>th', '<cmd>lua Open_terminal("horizontal", In.input("Enter terminal index: "))<cr>')
      -- Vertical mode
      vim.keymap.set ('n', '<leader>tv', '<cmd>lua Open_terminal("vertical", In.input("Enter terminal index: "))<cr>')
      -- Float mode
      vim.keymap.set ('n', '<leader>tf', '<cmd>lua Open_terminal("float", In.input("Enter terminal index: "))<cr>')
      vim.keymap.set ('n', '<leader>ta', '<cmd>lua Open_terminal("tab", In.input("Enter terminal index: "))<cr>')
    end,
}

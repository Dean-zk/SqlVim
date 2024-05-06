local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", --latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { import = "sql.plugins.lsp" }, { import = "sql.plugins.modules" },
  { import = "sql.plugins.ui" }, { import = "sql.plugins.terminal"}, { import = "sql.plugins.dependencies" },
  { import = "sql.plugins.comments"}, { import = "sql.plugins.syntax" }, { import = "sql.plugins.misc" },
  { import = "sql.plugins.completion"}, { import = "sql.plugins.git" }, },
  {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
  ui = {
    icons = {
      ft = "",
      lazy = "󰂠 ",
      loaded = "",
      not_loaded = "",
    },
  },
})

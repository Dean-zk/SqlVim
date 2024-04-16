vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<Cr>", {desc = "Clear search highlights"})

-- increment/decrement int values
keymap.set("n", "<leader>+", "<C-a>", {desc = "increment number"})
keymap.set("n", "<leader>-", "<C-x>", {desc = "decrement number"})

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", {desc = "split window vertically"})
keymap.set("n", "<leader>sh", "<C-w>s", {desc = "split window horizontally"})
keymap.set("n", "<leader>se", "<C-w>=", {desc = "make split equal size"})
keymap.set("n", "<leader>sx", "<cmd>close<CR>", {desc = "close current split"})

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "open new tab"})
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", {desc = "close current tab"})
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", {desc = "go to next tab"})
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", {desc = "go to previous tab"})
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", {desc = "open current buffer in new tab"})

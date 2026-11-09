local map = vim.keymap.set

-- UNDO / REDO
map("n", "<C-z>", "u", { desc = "Undo" })
map("i", "<C-z>", "<C-o>u", { desc = "Undo" })
map("n", "<C-y>", "<C-r>", { desc = "Redo" })
map("i", "<C-y>", "<C-o><C-r>", { desc = "Redo" })

-- SELECT ALL
map("n", "<C-a>", "ggVG", { desc = "Select All" })
map("i", "<C-a>", "<Esc>ggVG", { desc = "Select All" })

-- COPY
map("v", "<C-c>", '"+y', { desc = "Copy" })
map("n", "<C-c>", '"+yy', { desc = "Copy Line" })

-- CUT
map("v", "<C-x>", '"+d', { desc = "Cut" })
map("n", "<C-x>", '"+dd', { desc = "Cut Line" })

-- PASTE
map("n", "<C-v>", '"+p', { desc = "Paste" })
map("i", "<C-v>", "<C-r>+", { desc = "Paste" })
map("v", "<C-v>", '"_d"+P', { desc = "Paste Over Selection" })

-- SAVE
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr>", {
  desc = "Save File",
})

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " "

local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-K>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-J>", function() harpoon:list():next() end)

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard=unnamedplus")
vim.g.mapleader = " "

vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.cmd("set relativenumber")
vim.cmd("set number")
vim.cmd("set conceallevel=2")
vim.cmd("set cursorline")

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])

-- Buffer navigation
vim.keymap.set("n", "H", ":bp<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "L", ":bn<CR>", { desc = "Next buffer" })

-- Hex stuff
vim.keymap.set("n", "<leader>xx", ":%!xxd<CR>", { desc = "Hexadecimal dump" })
vim.keymap.set("n", "<leader>xr", ":%!xxd -r<CR>", { desc = "Restore dump" })

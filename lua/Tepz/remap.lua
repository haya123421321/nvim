vim.g.mapleader = " "

vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("n", "<leader>q", vim.cmd.Ex)
vim.keymap.set('n', '<leader>x', ':!%:p<CR>')
vim.keymap.set("v", "<S-Tab>", "<gv")

vim.keymap.set("i", "<M-BS>", "<C-o>:normal! bdiw<CR>")

vim.keymap.set("v", "<C-S-Down>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "<C-S-Up>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("i", "<C-S-Up>", "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true })
vim.keymap.set("i", "<C-S-Down>", "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true })
vim.keymap.set("n", "<C-S-Up>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.keymap.set("n", "<C-S-Down>", ":m .+1<CR>==", { noremap = true, silent = true })

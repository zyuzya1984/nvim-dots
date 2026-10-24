local map = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "


map("n", "<A-'>", ":botright vnew | term<CR>")
map('t', '<Esc>', "<C-\\><C-n>")

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>s", ":%s//g<Left><Left>")
map("n", "<leader>e", ":NvimTreeToggle<CR>") 
map("n", "<leader>R", ":so %<CR>")
map("n", "<leader>x", "<cmd>!chmod +x %<CR>")
map('n', '<leader>nh', '<cmd>nohlsearch<CR>')
map('i', 'jj', '<Esc>')

map("n", "<leader>f", ":lua require('fzf-lua').files()<CR>")

map("n", "<C-n>", ":botright vnew<CR>")
map("n", "<Tab>", ":wincmd w<CR>")
map("n", "<S-Tab>", ":wincmd r<CR>")

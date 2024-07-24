vim.g.mapleader = "\t"

vim.keymap.set('n', '<leader>e', vim.cmd.Ex)

vim.keymap.set('n', '<A-r>', '<C-r>')

vim.keymap.set({"n", "v"}, "h", "<nop>")
vim.keymap.set({"n", "v"}, "j", "h")
vim.keymap.set({"n", "v"}, "k", "j")
vim.keymap.set({"n", "v"}, "l", "k")
vim.keymap.set({"n", "v"}, ";", "l")

vim.keymap.set("n", "<C-w>h", "<nop>")
vim.keymap.set("n", "<C-w>j", "<nop>")
vim.keymap.set("n", "<C-w>k", "<nop>")
vim.keymap.set("n", "<C-w>l", "<nop>")

vim.keymap.set("n", "<leader>j", "<C-w>h")
vim.keymap.set("n", "<leader>k", "<C-w>j")
vim.keymap.set("n", "<leader>l", "<C-w>k")
vim.keymap.set("n", "<leader>;", "<C-w>l")

vim.keymap.set("n", "<S-l>", "<S-k>")
vim.keymap.set("n", "<S-k>", "<S-j>")
vim.keymap.set("n", "<S-j>", "<nop>")

vim.keymap.set("v", "K", ":m '<+1<CR>gv=gv")
vim.keymap.set("v", "L", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "K", "V:m '<+1<CR>gv=gv<esc>")
vim.keymap.set("n", "L", "V:m '<-2<CR>gv=gv<esc>")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["+d]])
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])

vim.keymap.set("i", "<A-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>x", "ggO#!/bin/sh<esc><C-o><cmd>!chmod +x %<CR><CR>:w<CR>", { silent = true })

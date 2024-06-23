vim.g.mapleader = ']'

vim.keymap.set('n', '<A-e>', vim.cmd.Ex)

vim.keymap.set({"n", "v"}, "h", "<nop>")
vim.keymap.set({"n", "v"}, "j", "h")
vim.keymap.set({"n", "v"}, "k", "j")
vim.keymap.set({"n", "v"}, "l", "k")
vim.keymap.set({"n", "v"}, ";", "l")

vim.keymap.set({"n", "v"}, "<C-h>", "<nop>")
vim.keymap.set({"n", "v"}, "<C-j>", "<C-h>")
vim.keymap.set({"n", "v"}, "<C-k>", "<C-j>")
vim.keymap.set({"n", "v"}, "<C-l>", "<C-k>")
vim.keymap.set({"n", "v"}, "<C-;>", "<C-l>")

vim.keymap.set("n", "<C-w>h", "<nop>")
vim.keymap.set("n", "<C-w>j", "<nop>")
vim.keymap.set("n", "<C-w>k", "<nop>")
vim.keymap.set("n", "<C-w>l", "<nop>")

vim.keymap.set("n", "<A-j>", "<C-w>h")
vim.keymap.set("n", "<A-k>", "<C-w>j")
vim.keymap.set("n", "<A-l>", "<C-w>k")
vim.keymap.set("n", "<A-;>", "<C-w>l")

vim.keymap.set("n", "<S-l>", "<S-k>")
vim.keymap.set("n", "<S-k>", "<S-j>")
vim.keymap.set("n", "<S-j>", "<nop>")

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({"n", "v"}, "<A-y>", [["+y]])
vim.keymap.set({"n", "v"}, "<A-d>", [["+d]])
vim.keymap.set({"n", "v"}, "<A-p>", [["+p]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<A-s>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<A-x>", "ggO#!/bin/sh<esc><C-o><cmd>!chmod +x %<CR><CR>:w<CR>", { silent = true })

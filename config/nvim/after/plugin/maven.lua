require("supermaven-nvim").setup({
  keymaps = {
    accept_suggestion = "<C-Space>",
  },
})
vim.api.nvim_set_keymap("i", "<Tab>", "<Tab>", { silent = true })

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "File Explorer" })
vim.keymap.set("n", "<leader>y", "ggVGy", { desc = "Yank entire buffer" })

local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }
keymap("n", "<Up>", "<Nop>", opts)
keymap("n", "<Down>", "<Nop>", opts)
keymap("n", "<Left>", "<Nop>", opts)
keymap("n", "<Right>", "<Nop>", opts)

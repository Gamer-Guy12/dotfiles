-- Keymaps for screen navigation
vim.keymap.set('n', "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set('n', "<C-l>", "<C-w>l", { silent = true })
vim.keymap.set('n', "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set('n', "<C-k>", "<C-w>k", { silent = true })

-- For tab navigation
vim.keymap.set('n', "<C-Tab>", ":bn", { silent = true })
vim.keymap.set('n', "<C-S-Tab>", ":bp", { silent = true })

-- CMD

-- Nvim Commands
vim.keymap.set('n', "<leader>b", "<C-v>", { silent = true })

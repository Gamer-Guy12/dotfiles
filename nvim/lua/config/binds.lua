-- Keymaps for screen navigation
vim.keymap.set('n', "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set('n', "<C-l>", "<C-w>l", { silent = true })
vim.keymap.set('n', "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set('n', "<C-k>", "<C-w>k", { silent = true })

-- For buffer navigation
vim.keymap.set('n', "<leader><Tab>", ":bnext<CR>", { silent = true })
vim.keymap.set('n', "<leader><S-Tab>", ":bprev<CR>", { silent = true })

-- CMD

-- Nvim Commands
vim.keymap.set('n', "<leader>b", "<C-v>", { silent = true })
vim.keymap.set('n', "<leader>q", ":q<CR>", { silent = true })

-- Keymaps for screen navigation
vim.keymap.set('n', "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set('n', "<C-l>", "<C-w>l", { silent = true })
vim.keymap.set('n', "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set('n', "<C-k>", "<C-w>k", { silent = true })

-- For tab navigation
vim.keymap.set('n', "<leader><tab>", ":bnext<CR>", { silent = true })
vim.keymap.set('n', "<leader><S-tab>", ":bprev<CR>", { silent = true })

-- CMD

-- nvim
vim.keymap.set('n', "<leader>q", ":q<CR>", { silent = true })
vim.keymap.set('n', "<C-q>", ":q<CR>", { silent = true })
vim.keymap.set('n', "<C-s>", ":w<CR>", { silent = true })
vim.keymap.set('n', "<leader>vb", "<C-v>", { silent = true })
vim.keymap.set('n', "<leader>i", ":lua vim.lsp.buf.hover()<CR>", { silent = true })

-- LSP
vim.keymap.set('n', "<leader>a", ":lua vim.lsp.buf.code_action()<CR>", { silent = true })

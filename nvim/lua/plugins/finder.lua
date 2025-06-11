return {
    {
        "nvim-telescope/telescope.nvim", 
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function ()
            require("telescope").setup({})

            vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>:<BS><Esc>")
            vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>:<BS><Esc>")
            vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>:<BS><Esc>")
            vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>:<BS><Esc>")
        end
    }
}

return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            vim.opt.termguicolors = true
            require("bufferline").setup({})

            vim.keymap.set("n", "<leader>w", ":bp | bd #<CR>:<Esc>")
        end
    }
}

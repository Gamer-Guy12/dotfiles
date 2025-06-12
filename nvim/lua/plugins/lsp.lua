return {
   {
      "neovim/nvim-lspconfig",
      config = function()
         require("lspconfig").clangd.setup({})
         require("lspconfig").lua_ls.setup({})
         vim.lsp.enable('lua_ls')
      end
   },
   {
      "nvim-treesitter/nvim-treesitter",
      branch = "master",
      lazy = false,
      build = ":TSUpdate",
      config = function()
         require("nvim-treesitter").setup({})
      end
   },
   {
      "nvimdev/lspsaga.nvim",
      config = function()
         require("lspsaga").setup({})
      end
   }
}

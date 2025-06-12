return {
   {
      "filipdutescu/renamer.nvim",
      dependencies = {
         "nvim-lua/plenary.nvim"
      },
      config = function()
         require("renamer").setup({})
         
         vim.api.nvim_set_keymap('n', "<leader>rn", '<cmd>lua require("renamer").rename()<CR>")', { noremap = true, silent = true })
      end
   },
   {
      "ray-x/lsp_signature.nvim",
      event = "InsertEnter",
      config = function()
         require("lsp_signature").setup({})
      end
   },
   {
      "mason-org/mason.nvim",
      config = function()
         require("mason").setup({})

         vim.keymap.set('n', "<leader>cf", ":!clang-format -i %<CR>", { noremap = true, silent = true })
      end
   }
}

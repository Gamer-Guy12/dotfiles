return {
   {
      "akinsho/toggleterm.nvim",
      config = function()
         require("toggleterm").setup({})

         vim.keymap.set("n", "<c-t>", ":ToggleTerm direction=float<CR>bash; exit<CR>clear<CR>", { noremap = true, silent = true })
      end
   }
}

return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
         "echasnovski/mini.icons"
		},
        config = function()
            require("nvim-tree").setup({})
            vim.keymap.set('n', '<C-n>', ":NvimTreeToggle<CR>:<Esc>", { silent = true })
        end
	},
   {
       "echasnovski/mini.icons",
       opts = {},
       specs = {
          { "nvim-tree/nvim-web-devicons", enabled = false, optional = true }
       },
   }
}

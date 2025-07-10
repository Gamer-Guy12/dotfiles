return {
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			flavour = "macchiato"
	-- 		})
	-- 		vim.cmd.colorscheme "catppuccin"
	-- 	end
	-- },
  -- {
  --   "nvim-tree/nvim-web-devicons",
  --   config = function()
  --     require("nvim-web-devicons").setup({
  --       default = true
  --     })
  --   end
  -- },
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      require('onedark').setup({
        style='dark'
      })

      require('onedark').load()
    end
  }
}

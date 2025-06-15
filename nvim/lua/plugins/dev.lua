return {
   {
      "desdic/greyjoy.nvim",
      dependencies = {
         "akinsho/toggleterm.nvim",
         "nvim-lua/plenary.nvim",
         "nvim-telescope/telescope.nvim"
      },
      keys = {
         { "<leader>gr", "<cmd>Greyjoy<CR>", { silent = true } },
         { "<leader>gt", "<cmd>GreyjoyTelescope<CR>", { silent = true } },
         { "<leader>ge", "<cmd>Greyedit<CR>", { silent = true } },
         { "<leader>rl", "<cmd>GreyjoyRunLast<CR>", { silent = true } }
      },
      cmd = { "Greyjoy", "Greyedit", "GreyjoyTelescope", "GreyjoyRunLast" },
      config = function()
         local greyjoy = require("greyjoy")
         local condition = require("greyjoy.conditions")
         greyjoy.setup({
            output_results = require("greyjoy.terminals").toggleterm,
            run_groups = { fast = { "generic", "makefile" } }
         })

         greyjoy.load_extension("makefile")
      end
   }
}

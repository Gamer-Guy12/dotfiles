return {
   {
      "hrsh7th/nvim-cmp",
      event = "InsertEnter",
      dependencies = {
         {
            "windwp/nvim-autopairs",
            config = function() 
               require("nvim-autopairs").setup({})
            end
         },
         {
            "L3MON4D3/LuaSnip",
            dependencies = "rafamadriz/friendly-snippets",
            opts = { history = true, updateevents = "TextChanged, TextChangedI" },
            config = function()
               require("luasnip").setup({})
            end
         },
         {
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
            "onsails/lspkind.nvim"
         }
      },
      config = function()
         local luasnip = require("luasnip")
         require("luasnip").setup({})

         local lspkind = require("lspkind")
         require("lspkind").setup({})
         
         local cmp = require("cmp")
         require("cmp").setup({
            completion = {
               completeopt = "menu,menuone,preview,noselect"
            },
            snippet = {
               expand = function(args)
                  luasnip.lsp_expand(args.body)
               end
            },
            mapping = cmp.mapping.preset.insert({
               ["<S-Tab>"] = cmp.mapping.select_prev_item(),
               ["<Tab>"] = cmp.mapping.select_next_item(),
               ["<C-b>"] = cmp.mapping.scroll_docs(-4),
               ["<C-f>"] = cmp.mapping.scroll_docs(4),
               ["<C-e>"] = cmp.mapping.complete(),
               ["<Esc>"] = cmp.mapping.abort(),
               ["<CR>"] = cmp.mapping.confirm({ select = false})
            }),
            sources = cmp.config.sources({
               { name = "nvim_lsp" },
               { name = "luasnip" },
               { name = "buffer" },
               { name = "path" },
               { name = "render-markdown" }
            }),
            formatting = {
               format = lspkind.cmp_format({
                  maxwidth = 50,
                  ellipsis_char = "..."
               })
            }
         })
      end
   },
   {
     "ThePrimeagen/refactoring.nvim",
     dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter"
     },
     lazy = false,
     config = function()
       require("refactoring").setup({

       })

       vim.keymap.set("x", "<leader>re", ":Refactor extract<CR>", { silent = true })
       vim.keymap.set("x", "<leader>rf", ":Refactor extract_to_file<CR>", { silent = true })
       vim.keymap.set("x", "<leader>rv", ":Refactor extract_var<CR>", { silent = true })
       vim.keymap.set({"n", "x"}, "<leader>ri", ":Refactor inline_var<CR>", { silent = true })
       vim.keymap.set("n", "<leader>rI", ":Refactor inline_func<CR>", { silent = true })
       vim.keymap.set("n", "<leader>rb", ":Refactor extract_block<CR>", { silent = true })
       vim.keymap.set("n", "<leader>rbf", ":Refactor extract_block_to_file<CR>", { silent = true })
     end
   }
}

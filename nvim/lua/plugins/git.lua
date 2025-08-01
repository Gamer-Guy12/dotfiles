return {
   {
      "lewis6991/gitsigns.nvim",
      config = function()
         require("gitsigns").setup({
            signs = {
               add = { text = '|' },
               change = { text = '|' },
               delete = { text = '_' },
               changedelete = { text = '~' },
               untracked = { text = '[' }
            },
            signs_staged = {
               add = { text = '|' },
               change = { text = '|' },
               delete = { text = '_' },
               changedelete = { text = '~' },
               untracked = { text = '[' }
            },
            signs_staged_enable = true,
            signcolumn = true,
            numhl = false,
            linehl = false,
            word_diff = false,
            watch_gitdir = {
               follow_files = true
            },
            auto_attach = true,
            attach_to_untracked = false,
            current_line_blame = true,
            current_line_blame_opts = {
               virt_text = true,
               virt_text_pos = "eol",
               delay = 1000,
               ignore_whitespace = false,
               virt_text_priority = 100,
               use_focus = true
            },
            current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
            sign_priority = 6,
            update_debounce = 100,
            status_formatter = nil,
            max_file_length = 40000,
            preview_config = {
               style = 'minimal',
               relative = 'cursor',
               row = 0,
               col = 1
            }
         })
      end
   },
   {
      "mrloop/telescope-git-branch.nvim",
      dependencies = {
         "nvim-telescope/telescope.nvim"
      },
      config = function()
         require('telescope').load_extension('git_branch')
      end
   },
   {
      "NeogitOrg/neogit",
      dependencies = {
         "nvim-lua/plenary.nvim",
         "sindrets/diffview.nvim",
         "nvim-telescope/telescope.nvim"
      },
      config = function()
         require("neogit").setup({})
      end
   },
   {
      "pwntester/octo.nvim",
      dependencies = {
         'nvim-lua/plenary.nvim',
         'nvim-telescope/telescope.nvim',
         'nvim-tree/nvim-web-devicons'
      },
      config = function()
         require("octo").setup({})
      end
   },
   {
      "kdheepak/lazygit.nvim",
      dependencies = {
         "nvim-lua/plenary.nvim"
      },
      cmd = {
         "LazyGit",
         "LazyGitConfig",
         "LazyGitCurrentFile",
         "LazyGitFilter",
         "LazyGitFilterCurrentFile"
      },
      config = function()
      end,
      keys = {
         { "<leader>g", "<cmd>LazyGit<cr>", { silent = true } }
      }
   }
}

return {
  {
    "stevearc/oil.nvim",
    lazy = false,
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup {
        default_file_explorer = true,
        columns = {
          "icon",
        },
        keymaps = {
          ["<C-h>"] = false,
          ["<M-h>"] = "actions.select_split",
          ["<leader>gd"] = {
            function()
              local oil = require "oil"
              local config = require "oil.config"
              if #config.columns == 1 then
                oil.set_columns { "icon", "permissions", "size", "mtime" }
              else
                oil.set_columns { "icon" }
              end
            end,
            "Toggle detailed view",
          },
        },
        view_options = {
          show_hidden = true,
        },
      }

        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
        vim.keymap.set("n", "<leader>-", require("oil").toggle_float) -- , { desc = "Open parent directory in floating" })
    end,
  
  },
}

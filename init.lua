-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- load options
require("config.opts")

-- Setup lazy.nvim
require("config.lazy")

vim.cmd[[colorscheme  tokyonight-night]]

-- 1. Options & Mappings (Load FIRST)
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.keymap.set('i', '(', '()<Left>', { expr = false })
vim.keymap.set('i', '{', '{}<Left>', { expr = false })

-- 2. Plugin Manager (Load LAST)
require("config.lazy")

vim.cmd.colorscheme("catppuccin-mocha")

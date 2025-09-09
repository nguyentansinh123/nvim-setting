-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.cmd("let g:netrw_banner = 0")



vim.g.root_spec = { "cwd" }

vim.g.autoformat = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.backspace = { "start", "eol", "indent" }

vim.opt.mouse = "a"
vim.g.editorconfig = true
vim.o.undofile = true

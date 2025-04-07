vim.g.mapleader = " "

local config_path = vim.fn.stdpath("config")
vim.opt.runtimepath:prepend(config_path)
package.path = package.path .. ";" .. config_path .. "/lua/?.lua;" .. config_path .. "/lua/?/init.lua"


require("config.lazy")
require("mappings")

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.termguicolors = true
vim.opt.background = "dark"


require("lazy").setup("plugins")


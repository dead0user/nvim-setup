require "user.options"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

-- leader set
local map = vim.api.nvim_set_keymap
map('', '<Space>', '', {})
vim.g.mapleader = ' '

-- leader menu mappings
vim.keymap.set("n", "<leader>f", ":ToggleTerm size=40 direction=float<cr>", { desc = "Float terminal" })
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
-- require("lazy").setup("themes")
-- color scheme
vim.cmd[[colorscheme catppuccin]]

-- leader mappings

options = { noremap = true }

require("mason").setup()
require("mason-lspconfig").setup()
require'lspconfig'.pyright.setup{}

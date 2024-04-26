require "user.options"
-- require "user.keymappings"

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
vim.keymap.set("", "<leader>f", ":ToggleTerm size=40 direction=float<cr>", { desc = "Float terminal" })
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- color scheme
vim.cmd[[colorscheme tokyonight]]

-- leader mappings

options = { noremap = true }

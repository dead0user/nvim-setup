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

-- mappings
vim.keymap.set("n", "<leader>f", ":ToggleTerm size=40 direction=float<cr>", { desc = "Float terminal" })
vim.keymap.set("n", "<leader>t", "<Ignore>", { desc = "Telescope" })
vim.keymap.set("n", "<leader>tf", ":Telescope find_files<cr>", { desc = "Telescope - files" })
vim.keymap.set("n", "<leader>tb", ":Telescope buffers<cr>", { desc = "Telescope - buffers" })
vim.keymap.set("n", "<leader>m", ":Neotree<cr>", { desc = "Neotree - files" })

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- color scheme
vim.cmd[[colorscheme onedark_vivid]]

-- leader mappings

options = { noremap = true }

require("mason").setup()
require("mason-lspconfig").setup()
require'lspconfig'.pyright.setup{}

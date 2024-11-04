return {
  'romgrk/barbar.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'lewis6991/gitsigns.nvim',
  },
  init = function() vim.g.barbar_auto_setup = false end,
  
  vim.keymap.set("n", "<leader>b", "<Ignore>", { desc = "Buffers" }),
  vim.keymap.set("n", "<leader>bp", ":BufferPrevious<CR>", { desc = "Previous buffer" }),
  vim.keymap.set("n", "<leader>bn", ":BufferNext<CR>", { desc = "Next buffer" }),
  vim.keymap.set("n", "<leader>bc", ":BufferClose<CR>", { desc = "Close buffer"}),

  config = function()
    require'barbar'.setup {
      animation = true,
      auto_hide = false,
      tabpages = true,
      clickable = true,
    }
  end,
}

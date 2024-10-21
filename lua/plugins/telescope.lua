return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  requires = {
    "nvim-lua/plenary.nvim"
  },
  vim.keymap.set("n", "<leader>t", "<Ignore>", { desc = "Telescope" }),
  vim.keymap.set("n", "<leader>tf", ":Telescope find_files<cr>", { desc = "Telescope - files" }),
  vim.keymap.set("n", "<leader>tb", ":Telescope buffers<cr>", { desc = "Telescope - buffers" }),
}

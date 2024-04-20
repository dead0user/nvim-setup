return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true}
    ,
  {
    "williamboman/mason.nvim",
    config = true
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    enabled = true
  }
}

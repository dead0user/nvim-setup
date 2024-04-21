-- TODO: move configs to external files
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
  },
  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "nvim-lua/plenary.nvim",
    enabled = true
  },
  {
    "nvim-tree/nvim-web-devicons",
    enable = true
  }
}

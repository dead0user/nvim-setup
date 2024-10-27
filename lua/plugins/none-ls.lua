return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.pyink,
        null_ls.builtins.formatting.markdownlint,
        -- null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.spell,
        null_ls.builtins.completion.luasnip,
        -- null_ls.builtins.diagnostics.ruff,
        -- null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.markdownlint_cli2,
        null_ls.builtins.diagnostics.pylint,
      },
    })
  end,
}

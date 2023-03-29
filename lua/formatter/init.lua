local formatters = require "lvim.lsp.null-ls.formatters"

local null_ls_h = require("null-ls.helpers")

formatters.setup {
  null_ls.builtins.formatting.prettier.with({
    command = "npx",
    args = null_ls_h.range_formatting_args_factory({
      "prettier",
      "--stdin-filepath",
      "$FILENAME",
    }, "--range-start", "--range-end", { row_offset = -3, col_offset = -1 }),
  }),
  -- { command = "prettierd",
  --   filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "css", "scss", "less", "html",
  --     "json", "jsonc", "yaml", "markdown", "markdown.mdx", "graphql", "handlebars" } }
  {
    commang = "eslint_d",
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "css", "scss", "less", "html",
      "json", "jsonc", "yaml", "markdown" },
    args = { "--fix" }
  }
}

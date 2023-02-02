local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "prettierd",
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "css", "scss", "less", "html",
      "json", "jsonc", "yaml", "markdown", "markdown.mdx", "graphql", "handlebars" } }
}

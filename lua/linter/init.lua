local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint_d", filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" } },
}

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    command = "eslint",
    args = { "-f" },
    filetypes = {
      "javascriptreact",
      "javascript",
      "typescriptreact",
      "typescript",
    },
  },
}

local linters = require "lvim.lsp.null-ls.linters"

local function has_eslint(util)
  local has_file = util.root_has_file({ ".eslintrc.js", ".eslintrc", ".eslintrc.json" })
  local package = vim.fn.readfile(vim.fn.getcwd() .. "/package.json")
  if has_file == false and package then
    has_file = package["eslintConfig"] ~= nil
  end
  return has_file
end

linters.setup {
  {
    command = "eslint_d",
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
    condition = has_eslint
  },
}

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    command = "eslint",
    filetypes = {
      "javascriptreact",
      "javascript",
      "typescriptreact",
      "typescript",
      "vue"
    },
    condition = has_eslint
  },
}

local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup {
  -- null_ls.builtins.formatting.prettier.with({
  --   command = "npx",
  --   args = null_ls_h.range_formatting_args_factory({
  --     "prettier",
  --     "--stdin-filepath",
  --     "$FILENAME",
  --   }, "--range-start", "--range-end", { row_offset = -3, col_offset = -1 }),
  -- }),
  {
    command = "eslint_d",
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "css", "scss", "less", "html",
      "json", "jsonc", "yaml", "markdown", "markdown.mdx", "graphql", "handlebars" },
    args = { "--fix" },
    condition = has_eslint
  },
}

local formatters = require "lvim.lsp.null-ls.formatters"

local null_ls_h = require("null-ls.helpers")


local with_root_file = function(builtin, file)
  return builtin.with {
    condition = function(utils)
      return utils.root_has_file(file)
    end,
  }
end

formatters.setup {
  -- null_ls.builtins.formatting.prettier.with({
  --   command = "npx",
  --   args = null_ls_h.range_formatting_args_factory({
  --     "prettier",
  --     "--stdin-filepath",
  --     "$FILENAME",
  --   }, "--range-start", "--range-end", { row_offset = -3, col_offset = -1 }),
  -- }),
  { command = "eslint_d",
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "css", "scss", "less", "html",
      "json", "jsonc", "yaml", "markdown", "markdown.mdx", "graphql", "handlebars" },
    args = { "--fix" },
  },
  { command = "black",
    filetypes = { "python" },
    extra_args = function(params)
      return params.bufname:match("kialo") and { "-l 120" } or { "-l 80" }
    end,
  },
  { command = "isort", filetypes = { "python" } },
  -- {
  --   commang = "eslint_d",
  --   filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "css", "scss", "less", "html",
  --     "json", "jsonc", "yaml", "markdown" },
  --   args = { "--fix" },
  -- }
}

-- local null_ls = require("null-ls")

-- null_ls.setup({
--   sources = {
--     null_ls.builtins.formatting.stylua,
--     null_ls.builtins.formatting.eslint_d.with({
--       condition = function(utils)
--         return utils.root_has_file({ ".eslintrc.js", ".eslintrc.cjs", ".eslintrc.mjs" })
--       end,
--     }),
--     null_ls.builtins.formatting.prettierd.with({
--       condition = function(utils)
--         return utils.root_has_file({ "prettier.config.mjs", "prettier.config.js" })
--       end,
--     }),
--   },
--   on_attach = function(client, bufnr)
--     -- Without this, null-ls will set the formatexpr when it attaches which
--     -- we do not want, because it breaks text wrapping at 80chars, as Vim
--     -- delegates to the language server.
--     -- https://github.com/jose-elias-alvarez/null-ls.nvim/issues/1131
--     vim.api.nvim_buf_set_option(bufnr, "formatexpr", "")
--   end,
-- })

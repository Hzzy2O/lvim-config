local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "eslint_d",
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
    condition = function(utils)
      local has_file = utils.root_has_file({ ".eslintrc.js", ".eslintrc", ".eslintrc.json" })
      local package = vim.fn.readfile(vim.fn.getcwd() .. "/package.json")
      if has_file == false and package then
        has_file = package["eslintConfig"] ~= nil
      end
      return has_file
    end
  },
  -- sources = {
  --   null_ls.builtins.formatting.prettierd,
  --   null_ls.builtins.diagnostics.eslint_d.with({
  --       condition = function(utils)
  --         return utils.root_has_file({ '.eslintrc.js' })
  --       end,
  --   }),
  -- },
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
  },
}

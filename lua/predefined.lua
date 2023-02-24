function updateTable(tbl, findKey, newValue)
  for k, v in pairs(tbl) do
    local t = findKey(v)
    if t then
      return true
      end
  end
  return false
end

-- User Config for predefined plugins
-- lspconfig
local lsp = require("lspconfig")

lsp.unocss.setup({})
lsp.dartls.setup({})

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
-- lvim.builtin.cmp.sources[3].trigger_characters = { {'-'} }
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
-- Change Dashboard Text
local logo = {
  [[_____________________________________________________________________]],
  [[|_|_______|_______|______ '__  ___|_______|_______|_______|_______|_|]],
  [[|     |       |       |   |  )      /         |       |       |     |]],
  [[|_____|_______|_______|__ |,' , .  | | _ , ___|_______|_______|_____|]],
  [[| |       |       |      ,|   | |\ | | ,' |       |       |       | |]],
  [[|_|_______|_______|____ ' | _ | | \| |'\ _|_______|_______|_______|_|]],
  [[|_____|_______|_______|_  ,-'_ _____ | _______|_______|_______|_____|]],
  [[| |       |       |   ,-'|  _     |       |       |       |       | |]],
  [[|_|_______|_______|__  ,-|-' |  ,-. \ /_.--. _____|_______|_______|_|]],
  [[|     |       |          |   |  | |  V  |   ) |       |       |     |]],
  [[|_____|_______|_______|_ | _ |-'`-'  |  | ,' _|_______|_______|_____|]],
  [[| |       |       |      |        |  '  ;'        |       |       | |]],
  [[|_|_______|_______|______"|_____  _,- o'__|_______|_______|_______|_|]],
  [[|     |       |       |       _,-'    .       |       |       |     |]],
  [[|_____|_______|_______|_ _,--'\      _,-'_____|_______|_______|_____|]],
  [[| |       |       |     '     ||_||-' _   |       |       |       | |]],
  [[|_|_______|_______|_______|__ || ||,-'  __|_______|_______|_______|_|]],
  [[|     |       |       |       |  ||_,-'       |       |       |     |]],
  [[|_____|_______|______.|_______.__  ___|_______|_______|_______|_____|]],
  [[| |       |       |   \          /        |       |       |       | |]],
  [[|_|_______|_______|___ \ __|___ /,  _ |   | ______|_______|_______|_|]],
  [[|     |       |       | \  ∧   // \   |   |   |       |       |     |]],
  [[|_____|_______|_______|_ \/ \ //--'\  |   | __|_______|_______|_____|]],
  [[| |       |       |       `  V/    |p |-' |__,    |       |       | |]],
  [[|_|_______|_______|_______|_______ _______'_______|_______|_______|_|]],
  [[|     |       |       |       |       |       |       |       |     |]],
  [[|_____|_______|_______|_______|_______|_______|_______|_______|_____|]],
  [[|_________|_______|_______|_______|_______|_______|_______|_______|_|]]
}
lvim.builtin.alpha.dashboard.section.header.val = logo
lvim.builtin.alpha.dashboard.section.header.opts.hl = "Identifier"
-- Other builtin config
lvim.builtin.terminal.active = true
-- Disable Open mapping because goto insert mode by C-\ C-n
lvim.builtin.terminal.open_mapping = nil
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })

-- unocss support
-- local entry_filter = lvim.builtin.cmp.sources[3].entry_filter
-- table.insert(lvim.builtin.cmp.sources, 3 , { name = "nvim_lsp", trigger_characters = { "-" } } )
updateTable(lvim.builtin.cmp.sources, function(source)
  if source.name == "nvim_lsp" then
    source.trigger_characters = { "-" }
    source.entry_filter = nil
    return true
  end
end)

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "dart",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "scss",
  "rust",
  "java",
  "yaml",
  "solidity",
  "toml",
  "vue",
  "html",
}

lvim.builtin.treesitter.highlight.enable = true
lvim.builtin.treesitter.rainbow.enable = true

-- set lualine
lvim.builtin.lualine.sections.lualine_a = { "mode" }
lvim.builtin.lualine.inactive_sections.lualine_a = { "mode" }

-- set whick key
lvim.builtin.which_key.setup.plugins.registers = true



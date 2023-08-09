lvim.plugins = {
  {
    "tpope/vim-surround",
  },
  {
    "dart-lang/dart-vim-plugin",
  },
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("symbols-outline").setup()
    end
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle"
  },
  {
    "jbyuki/venn.nvim",
    cmd = "VBox"
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "p00f/nvim-ts-rainbow",
  },
  {
    "sindrets/diffview.nvim",
    event = "BufRead",
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "preservim/vim-markdown",
    event = "BufRead",
    ft = { "markdown" },
  },
  -- copilot
  { "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup({
          plugin_manager_path = get_runtime_dir() .. "/site/pack/packer",
          suggestion = {
            auto_trigger = true
          }
        })
      end, 100)
    end,
  },
  { "zbirenbaum/copilot-cmp",
    after = { "copilot.lua", "nvim-cmp" },
  },
  -- 移动插件
  {
    "ggandor/leap.nvim",
    config = function()
      require('leap').add_default_mappings()
    end,
  },
  -- {
  --   "jackMort/ChatGPT.nvim",
  --     config = function()
  --   require("chatgpt").setup({
  --       -- optional configuration
  --     })
  --   end,
  --   requires = {
  --     "MunifTanjim/nui.nvim",
  --     "nvim-lua/plenary.nvim",
  --     "nvim-telescope/telescope.nvim"
  --   }
  -- },
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },
  -- {
  --   'wfxr/minimap.vim',
  --   build = "cargo install --locked code-minimap",
  --   -- cmd = {"Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight"},
  --   config = function ()
  --     vim.cmd ("let g:minimap_width = 10")
  --     vim.cmd ("let g:minimap_auto_start = 1")
  --     vim.cmd ("let g:minimap_auto_start_win_enter = 1")
  --   end,
  -- },
  {
    "Hzzy2O/cryptowatch.nvim",
    event = "VimEnter",
    config = function ()
      local list = require("cryptowatch").setup()
      lvim.builtin.lualine.sections.lualine_z = list
    end
  },
  {
    "mg979/vim-visual-multi"
  },
  require("plugin.flit"),
  require("plugin.markdown-preview"),
  require("plugin.lsp-signature"),
  require("plugin.git-blame"),
  require("plugin.flutter-tools"),
  require("plugin.code-runner"),
  require("plugin.hover"),
  -- require("plugin.lspsaga"),
}

local M = {

  bind = {

    n_v_5j = "<C-j>",
    n_v_5k = "<C-k>",

    s_tab = {
      split = "ts",
      prev = "th",
      next = "tl",
      first = "tj",
      last = "tk",
      close = "tc",
    },


    terminal_to_normal = "<Esc>",
  },
  -- leap
  leap = {
    forwrdTo = "<C-s>",
    backwardTo = "<C-w>",
  },
  -- visual multi
  visualMulti = {
    transposition = "<C-t>",
    addCursor = "<C-\\>",
  },

  terminal = {
    toggle = "<C-t>",
    horizontal = "<C-n>",
    vertical = "tv",
    left = "<A-h>",
    right = "<A-l>",
    up = "<A-k>",
    down = "<A-j>",
  },

  enable_magic_search = true,

  nvimTree = {

    enable = true,

    edit = { "o", "<2-LeftMouse>" },
    -- toggle .gitignore (git enable)
    toggle_git_ignored = "i",
    -- Hide (dotfiles)
    toggle_dotfiles = ".",
    -- togglle custom config
    toggle_custom = "u",

    refresh = "R",
    -- 文件操作
    create = "a",
    remove = "d",
    rename = "r",
    cut = "x",
    copy = "c",
    paste = "p",
    copy_name = "y",
    copy_path = "Y",
    copy_absolute_path = "gy",
    toggle_file_info = "I",
    tabnew = "t",
    -- 进入下一级
    cd = "]",
    -- 进入上一级
    dir_up = "[",
    -- 关闭节点
    close_node = "W",
  },

  bufferLine = {

    prev = "H",
    next = "L",
    close_left = "<leader>bh",
    close_right = "<leader>bl",
    close_others = "<leader>bo",
    close_pick = "<leader>bp",
  },

  comment = {
    enable = true,
    -- Normal 模式快捷键
    toggler = {
      line = "gcc", -- 行注释
      block = "gbc", -- 块注释
    },
    -- Visual 模式
    opleader = {
      line = "gc",
      bock = "gb",
    },
  },

  venn = {
    -- toggle keymappings for venn using <leader>v
    enable = true,
    -- venn.nvim: enable or disable keymappings
    toggle = "<leader>v",
    -- draw a box by pressing "f" with visual selection
    draw_box = "f",
  },

  zen = {
    enable = true,
    toggle = "<leader>z",
  },

  lsp = {
    rename = "<leader>rn",
    code_action = "<leader>ca",
    format = "<leader>f",
    definition = "gd",
    references = "gr",
    hover = "gh",
    -- diagnostic
    open_flow = "gp",
    goto_next = "gj",
    goto_prev = "gk",
    -- typescript
    ts_organize = "gs",
    ts_rename_file = "gR",
    ts_add_missing_import = "gi",
    ts_remove_unused = "gu",
    ts_fix_all = "gf",
    ts_goto_source = "gD",
  },
}

return M

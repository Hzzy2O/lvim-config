local M = {

  bind = {

    -- down 5 times
    n_v_5j = "<C-j>",
    -- up 5 times
    n_v_5k = "<C-k>",
    -- open file under cursor in new tab
    open_file_undercursor = "gf",
    -- open file under cursor in new window
    open_file_undercursor_split = "gs",
  },
  -- leap
  leap = {
    -- jump to the next word
    forwrdTo = "<C-s>",
    -- jump to the previous word
    backwardTo = "<C-w>",
  },
  -- visual multi
  visualMulti = {
    -- exchange selection
    transposition = "<C-t>",
    addCursor = "<M-m>",
  },

  terminal = {
    -- quit to normal mode
    tonormal = "<C-x>",
    -- toogle all terminal
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

    edit = "o",
    -- toggle .gitignore (git enable)
    toggle_git_ignored = "i",
    -- Hide (dotfiles)
    toggle_dotfiles = ".",
    -- togglle custom config
    toggle_custom = "u",

    refresh = "R",
    ---- file operation
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
    -- switch to left tab
    prev = "H",
    -- switch to right tab
    next = "L",
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
    -- create
    rename = "<leader>rn",
    code_action = "<leader>ca",
    format = "<leader>f",
    definition = "gd",
    references = "gr",
    hover = "K",
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

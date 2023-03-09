-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
  -- for input mode
  i = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
    ["<C-n>"] = actions.cycle_history_next,
    ["<C-p>"] = actions.cycle_history_prev,
  },
  -- for normal mode
  n = {
    ["<C-j>"] = actions.move_selection_next,
    ["<C-k>"] = actions.move_selection_previous,
  },
}

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  t = { "<cmd>TroubleToggle<cr>", "All Diagnostics" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "References" },
  f = { "<cmd>TroubleToggle lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "QuickFix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "LocationList" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace Diagnostics" },
  T = { "<cmd>TodoTrouble<cr>","Todo List"}
}
lvim.builtin.which_key.mappings["o"] = { "<cmd>SymbolsOutline<cr>", "Toggle Outline" }

lvim.builtin.which_key.mappings["W"] = {
  name = "+Windows",
  v = { ":vsp<CR>", "split vertically" },
  d = { ":sp<CR>", "split horizontally" },
  w = { "<C-w>c", "close current" },
  o = { "<C-w>o", "close others" },
  h = { "<C-w>h", "jump left" },
  j = { "<C-w>j", "jump down" },
  k = { "<C-w>k", "jump up" },
  l = { "<C-w>l", "jump right" },
  y = { ":vertical resize -8CR>", "width decrease" },
  i = { ":vertical resize +8CR>", "width increase" },
  u = { ":resize -8CR>", "height decrease" },
  p = { ":resize +8CR>", "height increase" },
  e = { "<C-w>=", "size equal" },

}
lvim.builtin.which_key.mappings.b.o = { ":BufferLineCloseRight<CR>:BufferLineCloseLeft<CR>", "close others"}

lvim.builtin.which_key.mappings.l.r = { "<cmd>Lspsaga rename<CR>", "Rename" }
lvim.builtin.which_key.mappings.l.R = { ":LspRestart<CR>", "Restart LSP" }

lvim.builtin.which_key.mappings.F = {
  name = "+Flutter-tools",
  r = { "<cmd>FlutterRun<cr>", "Flutter Run" },
  d = { "<cmd>FlutterDevices<cr>", "Flutter Devices" },
  e = { "<cmd>FlutterEmulators<cr>", "Flutter Emulators" },
  l = { "<cmd>FlutterReload<cr>", "Flutter Reload" },
  s = { "<cmd>FlutterRestart<cr>", "Flutter Restart" },
  q = { "<cmd>FlutterQuit<cr>", "Flutter Quit" },
  c = { "<cmd>FlutterLogClear<cr>", "Flutter Log Clear" },
  g = { "<cmd>FlutterPubGet<cr>", "Flutter Pub Get" },
}

lvim.builtin.which_key.mappings.S = { "<cmd>lua require('spectre').open()<cr>", "Spectre" }

function diffview_file_history_with_current_file()
  local current_file_path = vim.fn.expand('%:p')
  vim.cmd("DiffviewFileHistory " .. current_file_path)
end
lvim.builtin.which_key.mappings.g.v = { "<cmd>DiffviewFileHistory<cr>", "Diffview" }
lvim.builtin.which_key.mappings.g.V = { "<cmd>lua diffview_file_history_with_current_file()<cr>", "Diffview current file" }
lvim.builtin.which_key.mappings.g.i = { "<cmd>DiffviewClose<cr>", "DiffviewClose" }

lvim.builtin.which_key.mappings.C = {
  name = "+ChatGpt",
  c = { "<cmd>ChatGPT<cr>", "ChatGPT" },
  a = { "<cmd>ChatGPTActAs<cr>", "ChatGPT Act As" },
}
function _G.Toggle_venn()
  local venn_enabled = vim.inspect(vim.b.venn_enabled)
  if venn_enabled == "nil" then
      vim.b.venn_enabled = true
    vim.cmd [[setlocal ve=all]]
    vim.api.nvim_buf_set_keymap(0, "n", "J", "<C-v>j:VBox<CR>", { noremap = true })
    vim.api.nvim_buf_set_keymap(0, "n", "K", "<C-v>k:VBox<CR>", { noremap = true })
    vim.api.nvim_buf_set_keymap(0, "n", "L", "<C-v>l:VBox<CR>", { noremap = true })
    vim.api.nvim_buf_set_keymap(0, "n", "H", "<C-v>h:VBox<CR>", { noremap = true })
        -- draw a box by pressing "f" with visual selection
    vim.api.nvim_buf_set_keymap(0, "v", "f", ":VBox<CR>", { noremap = true })
  else
    vim.cmd [[setlocal ve=]]
    vim.cmd [[mapclear <buffer>]]
    vim.b.venn_enabled = nil
  end
end

lvim.builtin.which_key.mappings.v = { ":lua Toggle_venn()<CR>" , "venn" }

local Keys = require("keys")

-- insert mode
local I = lvim.keys.insert_mode
-- normal mode
local N = lvim.keys.normal_mode
-- terminal mode
local T = lvim.keys.terminal_mode

local setKeyMap = function(map, key, value)
  map[key] = value
end

----- normal mode
setKeyMap(N, Keys.bind.n_v_5j, "5j")
setKeyMap(N, Keys.bind.n_v_5k , "5k")
-- toogle bufferline
setKeyMap(N, Keys.bufferLine.next, ":BufferLineCycleNext<CR>")
setKeyMap(N, Keys.bufferLine.prev, ":BufferLineCyclePrev<CR>")
-- Terminal
setKeyMap(N, Keys.terminal.toggle, ":ToggleTermToggleAll<CR>")
-- leap
setKeyMap(N, Keys.leap.forwrdTo, "<Plug>(leap-forward-to)")
setKeyMap(N, Keys.leap.backwardTo, "<Plug>(leap-backward-till)")
-- visual-multi
setKeyMap(N, Keys.visualMulti.transposition, "<Plug>(VM-Transpose)")
setKeyMap(N, Keys.visualMulti.addCursor, "<Plug>(VM-Add-Cursor-At-Pos)")
-- open under cursor
setKeyMap(N, Keys.bind.open_file_undercursor, "<C-w>gf")
setKeyMap(N, Keys.bind.open_file_undercursor_split, "gf")
-- lsp
setKeyMap(N, Keys.lsp.open_flow, "<cmd>lua vim.diagnostic.open_float()<CR>")

----- insert mode
setKeyMap(I, "<C-g>", "<C-g>u")
setKeyMap(I, "<C-j>", "<C-g>j")
setKeyMap(I, "<C-k>", "<C-g>k")
setKeyMap(I, "<C-h>", "<left>")
setKeyMap(I, "<C-l>", "<right>")

----- terminal mode
vim.cmd("tnoremap <C-x> <C-\\><C-n>")

vim.cmd("noremap <C-b> <C-v>")

---- nvim-tree
lvim.builtin.nvimtree.setup.view.mappings.list = {
	{ key = { "l", "<CR>", "<2-LeftMouse>" }, action = "edit" },
	{ key = { "h", "<BS>" }, action = "close_node" },
	{ key = { "H", }, action = "dir_up" },
	{ key = { "L", "<2-RightMouse>" }, action = "cd" },
	{ key = { "K", }, action = "first_sibling" },
	{ key = { "J", }, action = "last_sibling" },
	{ key = "C", action = "collapse_all" },
	{ key = "E", action = "expand_all" },
	---
	{ key = "<C-k>", action = "" },
	{ key = "<C-v>", action = "vsplit" },
	{ key = "<C-x>", action = "split" },
	{ key = "<C-t>", action = "tabnew" },
	{ key = "<C-e>", action = "edit_in_place" },
	{ key = "<C-o>", action = "edit_no_picker" },
	{ key = "<Tab>", action = "preview" },
	---
	{ key = "a", action = "create" },
	{ key = "d", action = "remove" },
	{ key = "D", action = "trash" },
	{ key = "r", action = "rename" },
	{ key = "gr", action = "full_rename" },
	{ key = "x", action = "cut" },
	{ key = "c", action = "copy" },
	{ key = "y", action = "copy_name" },
	{ key = "Y", action = "copy_path" },
	{ key = "gy", action = "copy_absolute_path" },
	{ key = "p", action = "paste" },
	---
	{ key = "g?", action = "toggle_help" },
	{ key = "z", action = "toggle_dotfiles" },
	{ key = "m", action = "toggle_mark" },
	{ key = "i", action = "toggle_file_info" },
	{ key = "I", action = "toggle_git_ignored" },
	{ key = "U", action = "toggle_custom" },
	---
	{ key = ".", action = "run_file_command" },
	{ key = "s", action = "system_open" },
	---
	{ key = "R", action = "refresh" },
	{ key = "S", action = "search_node" },
	{ key = "q", action = "close" },
	---
	{ key = "[p", action = "parent_node" },
	{ key = "[e", action = "prev_diag_item" },
	{ key = "[c", action = "prev_git_item" },
	{ key = "[s", action = "prev_sibling" },
	{ key = "]e", action = "next_diag_item" },
	{ key = "]c", action = "next_git_item" },
	{ key = "]s", action = "next_sibling" },
	{ key = "f", action = "live_filter" },
	{ key = "F", action = "clear_live_filter" },
	{ key = "bmv", action = "bulk_move" },
}

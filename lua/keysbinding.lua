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

----- 正常模式
-- 快速移动
setKeyMap(N, Keys.bind.n_v_5j, "5j")
setKeyMap(N, Keys.bind.n_v_5k , "5k")
-- 切换标签页 bufferline
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

----- 插入模式
setKeyMap(I, "<C-g>", "<C-g>u")
setKeyMap(I, "<C-j>", "<C-g>j")
setKeyMap(I, "<C-k>", "<C-g>k")
setKeyMap(I, "<C-h>", "<left>")
setKeyMap(I, "<C-l>", "<right>")

vim.opt.relativenumber = true
vim.opt.showcmd = true
vim.opt.foldmethod = "indent"
vim.opt.foldenable = false
-- vim.api.nvim_exec(
--   [[
-- let $GIT_EDITOR = "nvr --remote-wait +'set bufhidden=wipe'"
-- ]] ,
--   false
-- )
vim.env.GIT_EDITOR = 'nvr -cc tabedit'


local is_windows = vim.loop.os_uname().version:match "Windows"

if is_windows then
  vim.opt.shell = "pwsh.exe -NoLogo"
  vim.opt.shellcmdflag =
  "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
  vim.cmd [[
    let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
    let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
    set shellquote= shellxquote=
  ]]

  lvim.builtin.terminal.shell = "pwsh.exe -NoLogo"
  vim.opt.guifont = { "JetBrainsMono Nerd Font", ":h10" }
  vim.api.nvim_set_keymap('n', '<F11>', ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
  require("flutter-tools.config").set({
    flutter_path = "D://Program Files/flutter/bin/flutter.bat"
  })
else
  vim.g.neovide_input_macos_alt_is_meta = 1
  vim.opt.guifont = { "JetBrainsMono Nerd Font", "h10" }
end

lvim.builtin.terminal.direction = "horizontal"
lvim.builtin.terminal.execs = {
  { vim.o.shell, "<M-2>", "Horizontal Terminal", "horizontal", 0.3 },
  { vim.o.shell, "<M-3>", "Vertical Terminal", "vertical", 0.4 },
  { vim.o.shell, "<M-1>", "Float Terminal", "float", nil },
}

vim.opt.relativenumber = true
vim.opt.showcmd = true
vim.opt.foldmethod = "indent"
vim.opt.foldenable = false

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
  lvim.builtin.terminal.execs = {
    { vim.o.shell, "<M-1>", "Horizontal Terminal", "horizontal", 0.3 },
    { vim.o.shell, "<M-2>", "Vertical Terminal", "vertical", 0.4 },
    { vim.o.shell, "<M-3>", "Float Terminal", "float", nil },
  }
  vim.opt.guifont = { "JetBrainsMono Nerd Font", ":h10" }
  vim.api.nvim_set_keymap('n', '<F11>', ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
else

  vim.opt.guifont = { "JetBrainsMono Nerd Font", "h10" }
end

lvim.builtin.terminal.direction = "horizontal"

require 'lspconfig'.unocss.setup {}


return {
  "CRAG666/code_runner.nvim",
  config = function ()
    require("code_runner").setup({
      focus = false,
      filetype = {
        dart = "dart $dir/$fileName",
        excluded_buftypes = { "message" }
      }
    })
  end
}

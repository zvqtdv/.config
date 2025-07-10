local au = vim.api.nvim_create_autocmd
-- hlsearch
au('CursorMoved', {
  group = group,
  callback = function()
    require('internal.hlsearch').start_hl()
  end,
})
au('InsertEnter', {
  group = group,
  callback = function()
    require('internal.hlsearch').stop_hl()
  end,
})

vim.cmd.colorscheme('zcolo')


require("plugins")

-- require("plugins.yazi")

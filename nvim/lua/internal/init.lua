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

-- vim.cmd.colorscheme('zcolo')
-- vim.cmd.colorscheme('cold')


require("plugins")

-- require("plugins.yazi")

local map = require('core.keymap')

local cmd = map.cmd

map.n({
  ['W'] = cmd('w'),
  ['Q'] = cmd('q'),
  ['B'] = cmd('bd'),
  ['ca'] = cmd('silent %y+'),
  ['<leader>sc'] = cmd('set spell!'),
  ['<leader>sw'] = cmd('set wrap!'),
  ['<leader><cr>'] = cmd('noh'),
  ['<leader><leader>'] = '/<++><CR>:noh<CR>"_c4l',
  ['j'] = 'gj',
  ['k'] = 'gk',
  ['J'] = '<c-d>',
  ['K'] = '<c-u>',
  -- window
  ['<C-h>'] = '<C-w>h',
  ['<C-j>'] = '<C-w>j',
  ['<C-k>'] = '<C-w>k',
  ['<C-l>'] = '<C-w>l',
  ['<leader>W'] = '<c-w>w',
  ['<leader>sh'] = cmd('set nosplitright | vsplit'),

  ['<leader>sj'] = cmd('set splitbelow | split'),
  ['<leader>sk'] = cmd('set nosplitbelow | split'),
  ['<leader>sl'] = cmd('set splitright | vsplit'),
  ['<leader>smv'] = '<c-w>t<c-W>H',
  ['<leader>smh'] = '<c-w>t<c-W>K',
  ['<up>'] = cmd('res +5'),
  ['<down>'] = cmd('res -5'),
  ['<left>'] = cmd('vertical res -5'),
  ['<right>'] = cmd('vertical res +5'),
  -- open vim config
  ['<leader>vim'] = cmd('edit ' .. vim.fn.stdpath('config') .. '/init.lua | Chdir silent'),
})

map.nox({
  ['L'] = '$',
  ['H'] = '^',

})

map.nx('<leader>cc', function()
  return require('vim._comment').operator() .. '_'
end, { expr = true })

map.v({
  ['N'] = ':normal ',

  ['Y'] = '"+y',
})


map.t({
  ['<c-o>'] = '<C-\\><C-N>',
})

map.ic({
  ['<c-h>'] = '<Left>',
  ['<c-l>'] = '<Right>',
  ['<c-a>'] = '<Home>',
  ['<c-e>'] = '<End>',
})

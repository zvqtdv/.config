local opt = vim.opt
opt.termguicolors = true
opt.ttyfast = true
opt.cursorline = true
opt.wrap = false
opt.relativenumber = true
opt.number = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smarttab = true
opt.autoindent = true
opt.smartindent = true
opt.ignorecase = true
opt.smartcase = true
opt.wildmenu = true
opt.ttimeoutlen = 0
opt.timeout = false
opt.showmode = false
opt.virtualedit = 'block'
opt.conceallevel = 0
opt.showtabline = 1
opt.laststatus = 3
opt.signcolumn = 'yes'
opt.breakindent = true
opt.spelloptions = 'camel'
opt.foldmethod = 'indent'
opt.foldlevel = 99
opt.winwidth = 30
opt.pumheight = 15
opt.list = true
-- opt.listchars = 'tab:»·,nbsp:+,trail:·,extends:→,precedes:←'
--opt.completeopt = 'menu,menuone,noselect,popup'
opt.fillchars = {
  stl = ' ',
  stlnc = '-',
  msgsep = ' ',
  foldopen = '',
  foldclose = '',
  fold = ' ',
  foldsep = ' ',
  diff = '╱',
  eob = ' ',
}
opt.cmdheight = 0
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.colorcolumn = '0'
opt.undofile = true
opt.updatetime = 100
opt.redrawtime = 1500
--opt.stc = '%!v:lua.require("internal.stc").stc()'

opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
--opt.splitright = true
--opt.splitbelow = true


--opt.rocks.hererocks = false
--opt.rocks.enabled = false



-- if exists('$TMUX')
-- opt term=screen-256color
-- endif
-- if vim.fn.exists('$TMUX') == 1 then
--   opt.term = 'screen-256color'
-- end
-- if vim.env.TMUX ~= nil then
--   vim.opt.term = 'screen-256color'
-- end


-- opt.tabline = " [%n]%f "
-- opt.tabpagebuflist = " a:n "

-- opt.winbar = "%=%m %f"
opt.winbar = " %F%m "
opt.winborder = "double"


opt.cmdheight = 1


-- opt.statusline = ' [%n] %<%f | %F | %l,%cV %y'
-- opt.statusline = ' @%{hostname()}  %=[%n]%f%= | %l,%c%V | %{&fenc} | %{&ff} | %y  '
opt.statusline = ' @%{hostname()} | %l,%c%V | %P | %m %=[%n]%f  %{&fdm}%= | %{&et},%{&ts},%{&sw} | %l,%c%V | %{&fenc} | %{&ff} | %y  '




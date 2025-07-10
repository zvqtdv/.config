--vim.cmd('set background=dark')
--vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') == 1 then
  vim.cmd('syntax reset')
end

vim.g.colors_name = 'custom'

--"Define highlight groups
vim.api.nvim_set_hl(0, "Normal",        { fg = "#FEFEFE", bg = "#202020" })
vim.api.nvim_set_hl(0, "NormalFloat",   { fg = "#FEFEFE", bg = "#202020" })
vim.api.nvim_set_hl(0, "Comment",       { fg = "#6f7b68" })
vim.api.nvim_set_hl(0, "TSComment",     { fg = "#6f7b68" })
vim.api.nvim_set_hl(0, "Conceal",       { bg = "#262626" })
vim.api.nvim_set_hl(0, "Constant",      { fg = "#cccccc" })
--"highlight CursorColumn
--"highlight CursorLine
vim.api.nvim_set_hl(0, "DiffAdd",       { fg = "#FFFEDB", bg = "#2B3328" })
vim.api.nvim_set_hl(0, "DiffChange",    { fg = "#FFFEDB", bg = "#262636" })
vim.api.nvim_set_hl(0, "DiffDelete",    { fg = "#C34143", bg = "#42242B" })
vim.api.nvim_set_hl(0, "DiffText",      { fg = "#FFFEDB", bg = "#49443C" })
vim.api.nvim_set_hl(0, "Directory",     { fg = "#C1C88D" })
vim.api.nvim_set_hl(0, "Error",         { fg = "#FFFEDB", undercurl = true })
vim.api.nvim_set_hl(0, "ErrorMsg",      { fg = "#FFFEDB" })
--"highlight FoldColumn
--"highlight Folded
vim.api.nvim_set_hl(0, "Function",      { fg = "#AA9AAC" })
vim.api.nvim_set_hl(0, "Identifier",    { fg = "#8B9698" })
vim.api.nvim_set_hl(0, "LineNrAbove",   { fg = "#888888", bg = "#222222" })
vim.api.nvim_set_hl(0, "LineNrBelow",   { fg = "#888888", bg = "#222222" })
vim.api.nvim_set_hl(0, "LineNr",        { fg = "#d6d2c8" })
vim.api.nvim_set_hl(0, "MatchParen",    { fg = "#FFFEDB" })
vim.api.nvim_set_hl(0, "NonText",       { fg = "#303030" })
vim.api.nvim_set_hl(0, "Operator",      { fg = "#DEBF7C" })
vim.api.nvim_set_hl(0, "Pmenu",         { fg = "#918988", bg = "#303030" })
vim.api.nvim_set_hl(0, "PmenuSbar",     { fg = "#918988", bg = "#262626" })
vim.api.nvim_set_hl(0, "PmenuSel",      { fg = "#BFBBBA", bg = "#303030" })
vim.api.nvim_set_hl(0, "PmenuThumb",    { fg = "#918988", bg = "#262626", reverse = true })
vim.api.nvim_set_hl(0, "PreProc",       { fg = "#8B9698" })
vim.api.nvim_set_hl(0, "Question",      { fg = "#9b8d7f" })
vim.api.nvim_set_hl(0, "QuickFixLine",  { bg = "#303030" })
vim.api.nvim_set_hl(0, "Search",        { bg = "#5F5958" })
--"highlight SignColumn
vim.api.nvim_set_hl(0, "Special",       { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "SpecialChar",   { fg = "#C1C88D" })
vim.api.nvim_set_hl(0, "SpecialKey",    { fg = "#676767" })
vim.api.nvim_set_hl(0, "Statement",     { fg = "#cccccc" })
vim.api.nvim_set_hl(0, "StatusLine",    { fg = "#FFFEDB", bg = "#34383C" })
vim.api.nvim_set_hl(0, "String",        { fg = "#A2A970" })
vim.api.nvim_set_hl(0, "Structure",     { fg = "#AA9AAC" })
vim.api.nvim_set_hl(0, "Substitute",    { fg = "#1A1A1A", bg = "#C1C88D" })
vim.api.nvim_set_hl(0, "TabLine",       { fg = "#A09998", bg = "#212121" })
vim.api.nvim_set_hl(0, "TabLineFill",   { fg = "#A09998", bg = "#212121" })
vim.api.nvim_set_hl(0, "TabLineSel",    { fg = "#A09998", bg = "#40474F" })
vim.api.nvim_set_hl(0, "Title",         { fg = "#FFFEDB", bold = false }) -- term=none cterm=none
vim.api.nvim_set_hl(0, "Todo",          { fg = "#8B9698" })
vim.api.nvim_set_hl(0, "Type",          { fg = "#E3D896" })
vim.api.nvim_set_hl(0, "Underlined",    { undercurl = true })
vim.api.nvim_set_hl(0, "VertSplit",     { fg = "#303030" })
vim.api.nvim_set_hl(0, "Visual",        { bg = "#454545" })
vim.api.nvim_set_hl(0, "WarningMsg",    { fg = "#FFFEDB" })
vim.api.nvim_set_hl(0, "Float",         { fg = "#6f7b68" })
vim.api.nvim_set_hl(0, "Number",        { fg = "#6f7b68" })
vim.api.nvim_set_hl(0, "Boolean",       { fg = "#6f7b68" })
vim.api.nvim_set_hl(0, "WinSeparator",  { fg = "#888888", bg = "#111111" })

-- 添加缺失组的定义（根据原始方案推断）
--vim.api.nvim_set_hl(0, "SignColumn",    { bg = "#202020" }) -- 匹配Normal背景
--vim.api.nvim_set_hl(0, "EndOfBuffer",   { fg = "#303030" }) -- 匹配NonText
--vim.api.nvim_set_hl(0, "CursorLine",    { bg = "#282828" }) -- 原始未定义，添加中性值
--vim.api.nvim_set_hl(0, "StatusLineNC",  { fg = "#888888", bg = "#222222" }) -- 匹配LineNrAbove

-- 添加透明度函数（不影响原始颜色定义）
--local function apply_transparency()
--  -- 需要透明的组列表
--  local transparent_groups = {
--    "Normal", "NormalFloat", "LineNr", "LineNrAbove", "LineNrBelow",
--    "StatusLine", "StatusLineNC", "SignColumn", "EndOfBuffer",
--    "VertSplit", "WinSeparator", "NonText", "CursorLine"
--  }
--  
--  for _, group in ipairs(transparent_groups) do
--    local hl = vim.api.nvim_get_hl(0, {name = group})
--    if hl.bg then
--      vim.api.nvim_set_hl(0, group, vim.tbl_extend("force", hl, { bg = "none" }))
--    end
--  end
--end

-- 应用透明度（可选调用）
--apply_transparency()

-- 添加切换透明度的快捷键
--vim.keymap.set("n", "<leader>tt", apply_transparency, {desc = "Apply transparency"})

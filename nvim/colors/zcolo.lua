local colors = {
  bg0 = "#202020",         -- Background
  bg1 = "#222222",         -- Lighter background
  bg2 = "#262626",         -- Slightly lighter
  bg3 = "#303030",         -- Medium
  bg4 = "#454545",         -- Lighter medium
  fg0 = "#FEFEFE",         -- Foreground
  fg1 = "#FFFEDB",         -- Slightly darker foreground
  fg2 = "#d6d2c8",         -- Dimmer foreground
  fg3 = "#BFBBBA",         -- Even dimmer
  fg4 = "#918988",         -- Lightest foreground
  gray = "#6f7b68",        -- Comment color
  red = "#C34143",         -- Red
  green = "#A2A970",       -- Green
  yellow = "#DEBF7C",       -- Yellow
  blue = "#89b4fa",        -- Blue
  cyan = "#94e2d5",        -- Cyan
  purple = "#AA9AAC",       -- Purple
  orange = "#9b8d7f",       -- Orange
}

-- test
local function setcolor()
  local groups = {
    --" Define highlight groups
    Normal = { fg = colors.fg0, bg = colors.bg0 },
    NormalFloat = { fg = colors.fg0, bg = colors.bg0 },
    Comment = { fg = colors.gray },
    TSComment = { fg = colors.gray },
    Conceal = { bg = colors.bg2 },
    Constant = { fg = "#cccccc" },
    --"highlight CursorColumn
    --"highlight CursorLine
    DiffAdd = { fg = colors.fg1, bg = "#2B3328" },
    DiffChange = { fg = colors.fg1, bg = "#262636" },
    DiffDelete = { fg = colors.red, bg = "#42242B" },
    DiffText = { fg = colors.fg1, bg = "#49443C" },
    Directory = { fg = "#C1C88D" },
    Error = { fg = colors.fg1, undercurl = true },
    ErrorMsg = { fg = colors.fg1 },
    Cursorline = { bg = "#3a3a3a"},

    --"highlight FoldColumn
    --"highlight Folded
    Function = { fg = colors.purple },
    Identifier = { fg = "#8B9698" },

    LineNrAbove = { fg = "#888888", bg = colors.bg1 },
    LineNrBelow = { fg = "#888888", bg = colors.bg1 },
    --LineNr = { fg = colors.fg2 },
    lineNr = { bg = "NONE" },
    CursorlineNr = { bg = "NONE" },
    SignColumn = { bg = "NONE" },

    MatchParen = { fg = colors.fg1 },
    NonText = { fg = colors.bg3 },
    Operator = { fg = colors.yellow },
    Pmenu = { fg = colors.fg4, bg = colors.bg3 },
    PmenuSbar = { fg = colors.fg4, bg = colors.bg2 },
    PmenuSel = { fg = colors.fg3, bg = colors.bg3 },
    PmenuThumb = { fg = colors.fg4, bg = colors.bg2, reverse = true },
    PreProc = { fg = "#8B9698" },
    Question = { fg = colors.orange },
    QuickFixLine = { bg = colors.bg3 },
    Search = { bg = "#5F5958" },
    --"highlight SignColumn
    Special = { fg = "#cccccc" },
    SpecialChar = { fg = "#C1C88D" },
    SpecialKey = { fg = "#676767" },
    Statement = { fg = "#cccccc" },
    StatusLine = { fg = colors.fg1, bg = "#34383C" },
    String = { fg = colors.green },
    Structure = { fg = colors.purple },
    Substitute = { fg = "#1A1A1A", bg = "#C1C88D" },
    TabLine = { fg = "#A09998", bg = "#212121" },
    TabLineFill = { fg = "#A09998", bg = "#212121" },
    TabLineSel = { fg = "#A09998", bg = "#40474F" },
    Title = { fg = colors.fg1, bold = false },
    Todo = { fg = "#8B9698" },
    Type = { fg = "#E3D896" },
    Underlined = { undercurl = true },
    VertSplit = { fg = colors.bg3 },
    Visual = { bg = colors.bg4 },
    WarningMsg = { fg = colors.fg1 },
    Float = { fg = colors.gray },
    Number = { fg = colors.gray },
    Boolean = { fg = colors.gray },
    WinSeparator = { fg = "#888888", bg = "#111111" },
  }

  return groups
end

local groups = setcolor()

-- Apply highlights
if vim.fn.exists('syntax_on') == 1 then
  vim.cmd('syntax reset')
end

vim.g.colors_name = 'custom'

for group, settings in pairs(groups) do
  vim.api.nvim_set_hl(0, group, settings)
end

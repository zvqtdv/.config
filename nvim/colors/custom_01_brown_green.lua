-- test
local function setcolor()
  local groups = {
    --" Define highlight groups
    Normal = { fg = "#FEFEFE", bg = "#202020" },
    NormalFloat = { fg = "#FEFEFE", bg = "#202020" },
    Comment = { fg = "#6f7b68" },
    TSComment = { fg = "#6f7b68" },
    Conceal = { bg = "#262626" },
    Constant = { fg = "#cccccc" },
    --"highlight CursorColumn
    --"highlight CursorLine
    DiffAdd = { fg = "#FFFEDB", bg = "#2B3328" },
    DiffChange = { fg = "#FFFEDB", bg = "#262636" },
    DiffDelete = { fg = "#C34143", bg = "#42242B" },
    DiffText = { fg = "#FFFEDB", bg = "#49443C" },
    Directory = { fg = "#C1C88D" },
    Error = { fg = "#FFFEDB", undercurl = true },
    ErrorMsg = { fg = "#FFFEDB" },
    Cursorline = { bg = "#3a3a3a"},

    --"highlight FoldColumn
    --"highlight Folded
    Function = { fg = "#AA9AAC" },
    Identifier = { fg = "#8B9698" },

    LineNrAbove = { fg = "#888888", bg = "#222222" },
    LineNrBelow = { fg = "#888888", bg = "#222222" },
    --LineNr = { fg = "#d6d2c8" },
    lineNr = { bg = "NONE" },
    CursorlineNr = { bg = "NONE" },
    SignColumn = { bg = "NONE" },

    MatchParen = { fg = "#FFFEDB" },
    NonText = { fg = "#303030" },
    Operator = { fg = "#DEBF7C" },
    Pmenu = { fg = "#918988", bg = "#303030" },
    PmenuSbar = { fg = "#918988", bg = "#262626" },
    PmenuSel = { fg = "#BFBBBA", bg = "#303030" },
    PmenuThumb = { fg = "#918988", bg = "#262626", reverse = true },
    PreProc = { fg = "#8B9698" },
    Question = { fg = "#9b8d7f" },
    QuickFixLine = { bg = "#303030" },
    Search = { bg = "#5F5958" },
    --"highlight SignColumn
    Special = { fg = "#cccccc" },
    SpecialChar = { fg = "#C1C88D" },
    SpecialKey = { fg = "#676767" },
    Statement = { fg = "#cccccc" },
    StatusLine = { fg = "#FFFEDB", bg = "#34383C" },
    String = { fg = "#A2A970" },
    Structure = { fg = "#AA9AAC" },
    Substitute = { fg = "#1A1A1A", bg = "#C1C88D" },
    TabLine = { fg = "#A09998", bg = "#212121" },
    TabLineFill = { fg = "#A09998", bg = "#212121" },
    TabLineSel = { fg = "#A09998", bg = "#40474F" },
    Title = { fg = "#FFFEDB", bold = false },
    Todo = { fg = "#8B9698" },
    Type = { fg = "#E3D896" },
    Underlined = { undercurl = true },
    VertSplit = { fg = "#303030" },
    Visual = { bg = "#454545" },
    WarningMsg = { fg = "#FFFEDB" },
    Float = { fg = "#6f7b68" },
    Number = { fg = "#6f7b68" },
    Boolean = { fg = "#6f7b68" },
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

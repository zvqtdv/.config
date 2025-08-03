
local colors = {
  -- Monokai base colors
  bg = '#272822', -- Main background
  bg_dark = '#1e1f1c', -- Darker background
  bg_light = '#3e3d32', -- Lighter background
  bg_visual = '#49483e', -- Visual selection
  bg_search = '#4e4a3e', -- Search highlight
  -- fg = '#a8aec1', -- Main foreground
  fg = '#aaafc3', -- Main foreground
  -- fg = '#757590', -- Main foreground
  fg_dark = '#75715e', -- Comments and secondary text
  fg_light = '#f8f8f0', -- Bright text

  -- Monokai accent colors
  red = '#f92672', -- Keywords
  green = '#a6e22e', -- Strings, functions
  yellow = '#e6db74', -- Strings, numbers
  blue = '#66d9ef', -- Types, constants
  purple = '#ae81ff', -- Numbers, constants
  cyan = '#a1efe4', -- Special chars
  orange = '#fd971f', -- Numbers, constants
  pink = '#f92672', -- Keywords

  write = '#ffffff',
  grey = '#808080',
  silver  = '#c0c0c0',

  -- UI colors
 cursor_line = '#3c3d37',
  line_number = '#90908a',
  selection = '#49483e',
  comment = '#75715e',
  error = '#f92672',
  warning = '#fd971f',
  info = '#66d9ef',
  hint = '#a6e22e',

  -- custom base
  bsz = '#427b5a',
  -- bsp = '#a8aec1',
  bsp = '#757590',
  cuhint = '#47eae0',

  purple_01 = '#5E698E',
  purple_02 = '#9ca0b0',
  purple_03 = '#a8aec1',

}

vim.g.colors_name = 'zculor'

local function shl(group, properties)
  vim.api.nvim_set_hl(0, group, properties)
end

local function load_monokai()
  -- General editor highlights
  shl('Normal', { fg = colors.fg, bg = colors.bg })
  shl('EndOfBuffer', { fg = colors.bg })
  shl('CursorLine', { bg = colors.cursor_line })
  shl('CursorLineNr', { fg = colors.silver, bg = colors.cursor_line, bold = true })
  shl('LineNr', { fg = colors.line_number })
  shl('Comment', { fg = colors.comment, italic = true })
  shl('String', { fg = colors.bsz })
  shl('Function', { fg = colors.write })
  shl('Keyword', { fg = colors.bsp, bold = true })
  shl('Constant', { fg = colors.bsz })
  shl('Identifier', { fg = colors.fg })
  shl('Statement', { fg = colors.bsp })
  shl('Number', { fg = colors.bsz })
  shl('PreProc', { fg = colors.bsp })
  shl('Type', { fg = colors.write })
  shl('Special', { fg = colors.bsp })
  shl('Operator', { fg = colors.fg })
  shl('Underlined', { fg = colors.write, underline = true })
  shl('Todo', { fg = colors.bg, bg = colors.bsz, bold = true })
  shl('Error', { fg = colors.error, bg = colors.bg, bold = true })
  shl('WarningMsg', { fg = colors.warning })
  shl('IncSearch', { fg = colors.bg, bg = colors.bsz })
  shl('Search', { fg = colors.bg, bg = colors.bsz })
  shl('Visual', { bg = colors.selection })
  shl('Pmenu', { fg = colors.fg, bg = colors.bg_dark })
  shl('PmenuMatch', { fg = colors.write, bg = colors.bg_dark, bold = true })
  shl('PmenuMatchSel', { fg = colors.write, bg = colors.bg_light, bold = true })
  shl('PmenuSel', { fg = colors.fg_light, bg = colors.bg_light })
  shl('PmenuSbar', { bg = colors.bg_light })
  shl('PmenuThumb', { bg = colors.fg_dark })
  shl('MatchParen', { bg = colors.bg_light, bold = true })
  shl('WinBar', { bg = colors.bg_light })
  shl('NormalFloat', { bg = colors.bg_dark })
  shl('FloatBorder', { fg = colors.bsz })
  shl('Title', { fg = colors.bsz, bold = true })
  shl('WinSeparator', { fg = colors.fg_dark })
  shl('StatusLine', { bg = colors.bg_light, fg = colors.fg })
  shl('StatusLineNC', { bg = colors.bg_dark, fg = colors.fg_dark })
  shl('ModeMsg', { fg = colors.cyan })
  shl('ColorColumn', { bg = colors.cursor_line })
  shl('WildMenu', { fg = colors.bg, bg = colors.bsz })
  shl('Folded', { bg = colors.bg_light, fg = colors.fg_dark })
  shl('ErrorMsg', { fg = colors.error })
  shl('ComplMatchIns', { fg = colors.comment })
  shl('Directory', { fg = colors.write })
  shl('QuickFixLine', { bold = true })
  shl('qfFileName', { fg = colors.write })
  shl('qfSeparator', { fg = colors.comment })
  shl('qfLineNr', { link = 'LineNr' })
  shl('qfText', { link = 'Normal' })

  -- Treesitter highlights
  shl('@function', { fg = colors.write })
  shl('@function.builtin', { fg = colors.write })
  shl('@function.call', { fg = colors.write })
  shl('@function.macro', { fg = colors.orfange })
  shl('@variable', { fg = colors.fg })
  shl('@variable.builtin', { fg = colors.write })
  shl('@variable.parameter', { fg = colors.bsp, italic = true })
  shl('@variable.member', { fg = colors.fg })
  shl('@keyword', { fg = colors.bsp, bold = true })
  shl('@keyword.function', { fg = colors.bsp })
  shl('@keyword.operator', { fg = colors.bsp })
  shl('@keyword.import', { fg = colors.bsp })
  shl('@keyword.type', { fg = colors.write })
  shl('@keyword.modifier', { fg = colors.bsp })
  shl('@keyword.repeat', { fg = colors.bsp })
  shl('@keyword.return', { fg = colors.bsp })
  shl('@keyword.debug', { fg = colors.bsp })
  shl('@keyword.exception', { fg = colors.bsp })
  shl('@keyword.conditional', { fg = colors.bsp })
  shl('@keyword.conditional.ternary', { fg = colors.bsp })
  shl('@keyword.directive', { fg = colors.bsp })
  shl('@keyword.directive.define', { fg = colors.bsp })
  shl('@string', { fg = colors.bsz })
  shl('@string.documentation', { fg = colors.bsz })
  shl('@string.regexp', { fg = colors.cyan })
  shl('@string.escape', { fg = colors.bsp })
  shl('@string.special', { fg = colors.bsp })
  shl('@string.special.symbol', { fg = colors.bsp })
  shl('@string.special.url', { fg = colors.cyan, underline = true })
  shl('@comment', { fg = colors.comment, italic = true })
  shl('@comment.documentation', { fg = colors.comment, italic = true })
  shl('@comment.error', { fg = colors.error })
  shl('@comment.warning', { fg = colors.warning })
  shl('@comment.note', { fg = colors.info })
  shl('@comment.todo', { fg = colors.bg, bg = colors.bsp, bold = true })
  shl('@type', { fg = colors.write })
  shl('@constant', { fg = colors.bsz })
  shl('@constant.builtin', { fg = colors.bsz })
  shl('@constant.macro', { fg = colors.bsz })
  shl('@constructor', { fg = colors.write })
  shl('@parameter', { fg = colors.bsp, italic = true })
  shl('@class', { fg = colors.write })
  shl('@method', { fg = colors.write })
  shl('@method.call', { fg = colors.write })
  shl('@property', { fg = colors.fg })
  shl('@field', { fg = colors.fg })
  shl('@interface', { fg = colors.write })
  shl('@namespace', { fg = colors.write })
  shl('@module', { fg = colors.write })
  shl('@punctuation', { fg = colors.fg })
  shl('@punctuation.bracket', { fg = colors.fg })
  shl('@punctuation.delimiter', { fg = colors.fg })
  shl('@punctuation.special', { fg = colors.bsp })
  shl('@operator', { link = 'Operator' })
  shl('@attribute', { fg = colors.bsp })
  shl('@boolean', { fg = colors.bsz })
  shl('@number', { fg = colors.bsz })
  shl('@number.float', { fg = colors.bsz })
  shl('@tag', { fg = colors.bsp })
  shl('@tag.attribute', { fg = colors.write })
  shl('@tag.delimiter', { fg = colors.fg })
  shl('@markup', { fg = colors.fg })
  shl('@markup.strong', { fg = colors.fg, bold = true })
  shl('@markup.italic', { fg = colors.fg, italic = true })
  shl('@markup.strikethrough', { fg = colors.fg, strikethrough = true })
  shl('@markup.underline', { fg = colors.fg, underline = true })
  shl('@markup.heading', { fg = colors.bsz, bold = true })
  shl('@markup.quote', { fg = colors.comment, italic = true })
  shl('@markup.math', { fg = colors.cyan })
  shl('@markup.environment', { fg = colors.bsp })
  shl('@markup.link', { fg = colors.cyan })
  shl('@markup.link.label', { fg = colors.cyan })
  shl('@markup.link.url', { fg = colors.cyan, underline = true })
  shl('@markup.raw', { fg = colors.bsz })
  shl('@markup.raw.block', { fg = colors.bsz })
  shl('@markup.list', { fg = colors.bsp })
  shl('@markup.list.checked', { fg = colors.write })
  shl('@markup.list.unchecked', { fg = colors.comment })
  shl('@character', { fg = colors.bsz })

  -- Diagnostics
  shl('DiagnosticError', { fg = colors.error })
  shl('DiagnosticWarn', { fg = colors.warning })
  shl('DiagnosticInfo', { fg = colors.info })
  shl('Diagnostichint', { fg = colors.hint })
  shl('DiagnosticOk', { fg = colors.write })
  shl('DiagnosticUnderlineError', { undercurl = true, sp = colors.error })
  shl('DiagnosticUnderlineWarn', { undercurl = true, sp = colors.warning })
  shl('DiagnosticUnderlineInfo', { undercurl = true, sp = colors.info })
  shl('DiagnosticUnderlinehint', { undercurl = true, sp = colors.hint })
  shl('DiagnosticUnderlineOk', { undercurl = true, sp = colors.write })

  -- LSP
  shl('LspReferenceText', { bg = colors.bg_light })
  shl('LspReferenceRead', { bg = colors.bg_light })
  shl('LspReferenceWrite', { bg = colors.bg_light })
  shl('LspSignatureActiveParameter', { fg = colors.orange, bold = true })
  shl('LspCodeLens', { fg = colors.comment, italic = true })
  shl('LspCodeLensSeparator', { fg = colors.comment })

  -- Semantic tokens
  shl('@lsp.type.class', { fg = colors.bsz })
  shl('@lsp.type.decorator', { fg = colors.orange })
  shl('@lsp.type.enum', { fg = colors.bsz })
  shl('@lsp.type.enumMember', { fg = colors.purple })
  shl('@lsp.type.function', { fg = colors.write })
  shl('@lsp.type.interface', { fg = colors.bsz })
  shl('@lsp.type.macro', { fg = colors.orange })
  shl('@lsp.type.method', { fg = colors.write })
  shl('@lsp.type.namespace', { fg = colors.bsz })
  shl('@lsp.type.parameter', { fg = colors.orange, italic = true })
  shl('@lsp.type.property', { fg = colors.fg })
  shl('@lsp.type.struct', { fg = colors.bsz })
  shl('@lsp.type.type', { fg = colors.bsz })
  shl('@lsp.type.typeParameter', { fg = colors.bsz, italic = true })
  shl('@lsp.type.variable', { fg = colors.fg })

  shl('IndentLine', { fg = colors.bg_light })
  shl('IndentLineCurrent', { fg = colors.fg_dark })

  -- GitSigns
  shl('GitSignsAdd', { fg = colors.write, bg = colors.bg })
  shl('GitSignsChange', { fg = colors.bsz, bg = colors.bg })
  shl('GitSignsDelete', { fg = colors.bsp, bg = colors.bg })
  shl('GitSignsAddNr', { fg = colors.write })
  shl('GitSignsChangeNr', { fg = colors.bsz })
  shl('GitSignsDeleteNr', { fg = colors.bsp })
  shl('GitSignsAddLn', { bg = '#2a3f2a' })
  shl('GitSignsChangeLn', { bg = '#3f3a2a' })
  shl('GitSignsDeleteLn', { bg = '#3f2a2a' })

  -- Mode line
  shl('ModeLineMode', { fg = colors.bg, bg = colors.bsp, bold = true })
  shl('ModeLineFileinfo', { fg = colors.fg, bold = true })
  shl('ModeLineGit', { fg = colors.green })
  shl('ModeLineDiagnostic', { fg = colors.warning })
end

load_monokai()

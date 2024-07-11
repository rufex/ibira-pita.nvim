local M = {}

local function hl(group, color)
  vim.api.nvim_set_hl(0, group, color)
end

local palette = {
  black = "#0C0C0C",
  black_light = "#181818",
  grey_darker = "#2C2C2C",
  grey_dark = "#6C6C6C",
  grey = "#8F847B",
  grey_light = "#BEB6AE",

  yellow = "#D4A12E",
  yellow_light = "#E0B84A",
  yellow_pale = "#F2CA72",
  yellow_strong = "#F0D020",

  brown_orange = "#C96940",
  orange = "#D98A5D",

  red = "#D96D69",
  red_light = "#E0898D",

  purple = "#885064",
  blue = "#5F99D3",

  beige = "#C3A07A",
  cream = "#E8D0B0",
  pale_brown = "#A58A6E",
}

local function apply_colors()
  hl("Normal", { fg = palette.beige, bg = palette.black })
  hl("Comment", { fg = palette.grey, italic = true })
  hl("Constant", { fg = palette.yellow_light })
  hl("String", { fg = palette.orange })
  hl("Character", { fg = palette.orange })
  hl("Number", { fg = palette.yellow })
  hl("Boolean", { fg = palette.yellow_strong })
  hl("Float", { fg = palette.yellow })
  hl("Identifier", { fg = palette.yellow_pale })
  hl("Function", { fg = palette.yellow_light })
  hl("Statement", { fg = palette.yellow_strong })
  hl("Conditional", { fg = palette.yellow })
  hl("Repeat", { fg = palette.yellow })
  hl("Label", { fg = palette.yellow })
  hl("Operator", { fg = palette.purple })
  hl("Keyword", { fg = palette.grey_dark })
  hl("Exception", { fg = palette.yellow })
  hl("PreProc", { fg = palette.brown_orange })
  hl("Include", { fg = palette.brown_orange })
  hl("Define", { fg = palette.brown_orange })
  hl("Macro", { fg = palette.brown_orange })
  hl("PreCondit", { fg = palette.brown_orange })
  hl("Type", { fg = palette.yellow_light })
  hl("StorageClass", { fg = palette.yellow_light })
  hl("Structure", { fg = palette.beige })
  hl("Typedef", { fg = palette.yellow_light })
  hl("Special", { fg = palette.orange })
  hl("SpecialChar", { fg = palette.purple })
  hl("Tag", { fg = palette.orange })
  hl("Delimiter", { fg = palette.grey_light })
  hl("SpecialComment", { fg = palette.grey_light })
  hl("Debug", { fg = palette.red })
  hl("Underlined", { underline = true })
  hl("Ignore", { fg = palette.grey })
  hl("Error", { fg = palette.red })
  hl("Todo", { fg = palette.yellow_pale, bg = palette.grey_dark, bold = true })
  hl("CursorLine", { bg = palette.black_light })
  hl("CursorLineNr", { fg = palette.yellow, bold = true })
  hl("LineNr", { fg = palette.grey })
  hl("SignColumn", { fg = palette.grey_light, bg = palette.black })
  hl("StatusLine", { fg = palette.black, bg = palette.brown_orange })
  hl("StatusLineNC", { fg = palette.grey_light, bg = palette.black })
  hl("Visual", { bg = palette.grey_darker })
  hl("Pmenu", { fg = palette.beige, bg = palette.grey_dark })
  hl("PmenuSel", { fg = palette.black, bg = palette.yellow })
  hl("PmenuSbar", { bg = palette.grey_dark })
  hl("PmenuThumb", { bg = palette.grey })
  hl("TabLine", { fg = palette.yellow_pale, bg = palette.black })
  hl("TabLineFill", { fg = palette.black, bg = palette.grey_dark })
  hl("TabLineSel", { fg = palette.yellow_light, bg = palette.grey_dark })
  hl("DiffAdd", { fg = palette.yellow_pale, bg = palette.black })
  hl("DiffChange", { fg = palette.blue, bg = palette.black })
  hl("DiffDelete", { fg = palette.red, bg = palette.black })
  hl("DiffText", { fg = palette.blue, bg = palette.black })
  hl("DiagnosticError", { fg = palette.red })
  hl("DiagnosticWarn", { fg = palette.yellow })
  hl("DiagnosticInfo", { fg = palette.blue })
  hl("DiagnosticHint", { fg = palette.grey })
  hl("TSAnnotation", { fg = palette.grey_light })
  hl("TSAttribute", { fg = palette.yellow_light })
  hl("TSBoolean", { fg = palette.yellow })
  hl("TSCharacter", { fg = palette.orange })
  hl("TSComment", { fg = palette.grey, italic = true })
  hl("TSConditional", { fg = palette.yellow })
  hl("TSConstant", { fg = palette.yellow })
  hl("TSConstBuiltin", { fg = palette.yellow_pale })
  hl("TSConstMacro", { fg = palette.yellow_light })
  hl("TSError", { fg = palette.red })
  hl("TSException", { fg = palette.yellow })
  hl("TSField", { fg = palette.yellow_pale })
  hl("TSFloat", { fg = palette.yellow })
  hl("TSFunction", { fg = palette.yellow_light })
  hl("TSFuncBuiltin", { fg = palette.yellow_pale })
  hl("TSFuncMacro", { fg = palette.yellow })
  hl("TSKeyword", { fg = palette.yellow })
  hl("TSKeywordFunction", { fg = palette.yellow })
  hl("TSLabel", { fg = palette.yellow })
  hl("TSMethod", { fg = palette.yellow_light })
  hl("TSNamespace", { fg = palette.grey })
  hl("TSNumber", { fg = palette.yellow })
  hl("TSOperator", { fg = palette.purple })
  hl("TSParameter", { fg = palette.yellow })
  hl("TSProperty", { fg = palette.yellow })
  hl("TSPunctDelimiter", { fg = palette.grey_dark })
  hl("TSPunctBracket", { fg = palette.grey_dark })
  hl("TSPunctSpecial", { fg = palette.grey_dark })
  hl("TSString", { fg = palette.orange })
  hl("TSStringRegex", { fg = palette.orange })
  hl("TSStringEscape", { fg = palette.orange })
  hl("TSSymbol", { fg = palette.yellow })
  hl("TSType", { fg = palette.yellow })
  hl("TSTypeBuiltin", { fg = palette.yellow })
  hl("TSVariable", { fg = palette.yellow_pale })
  hl("TSVariableBuiltin", { fg = palette.yellow })
  hl("Title", { fg = palette.yellow_strong })
  hl("@variable", { fg = palette.red })
  hl("Directory", { fg = palette.orange })
  hl("SignAdd", { fg = palette.yellow_pale })
  hl("SignChange", { fg = palette.blue })
  hl("SignDelete", { fg = palette.red })

  hl("GitSignsAdd", { fg = palette.purple })
  hl("GitSignsChange", { fg = palette.purple })
  hl("GitSignsDelete", { fg = palette.purple })
  hl("GitSignsChangeDelete", { fg = palette.purple })
end

function M.load()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")
  vim.o.background = "dark"
  apply_colors()
end

return M

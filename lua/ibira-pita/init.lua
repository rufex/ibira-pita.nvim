local M = {}

local function hl(group, color)
  vim.api.nvim_set_hl(0, group, color)
end

local palette = {
  black = "#12161C",
  black_light = "#1D1D1D",
  grey_darker = "#2C2C2C",
  grey_dark = "#5D5D5D",
  grey = "#847D74",
  grey_light = "#B1AAA2",
  yellow = "#BC9538",
  yellow_light = "#CAA854",
  yellow_pale = "#D8BF7C",
  yellow_strong = "#C8AF28",
  purple = "#8A5570",
  blue = "#6A8CB0",
  brown_orange = "#B06844",
  orange = "#C57D55",
  red = "#B84A4F",
  red_light = "#C8817F",
  beige = "#C0A580",
  cream = "#D8C59F",
  pale_brown = "#A08570",
  green = "#A8B65D",
}

local function apply_colors()
  hl("Normal", { fg = palette.beige, bg = palette.black })
  hl("Comment", { fg = palette.grey, italic = true })
  hl("Constant", { fg = palette.yellow_light })
  hl("String", { fg = palette.yellow_strong })
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
  hl("Special", { fg = palette.purple })
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
  hl("DiagnosticInfo", { fg = palette.grey_dark })
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
  hl("TSStringRegex", { fg = palette.purple })
  hl("TSStringEscape", { fg = palette.purple })
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
  hl("Search", { fg = palette.black, bg = palette.yellow })
  hl("IncSearch", { fg = palette.black, bg = palette.yellow_strong })
  hl("SpellBad", { undercurl = true, sp = palette.red })
  hl("SpellCap", { undercurl = true, sp = palette.yellow })
  hl("SpellLocal", { undercurl = true, sp = palette.blue })
  hl("SpellRare", { undercurl = true, sp = palette.purple })
  hl("Folded", { fg = palette.grey, bg = palette.black_light })
  hl("FoldColumn", { fg = palette.grey, bg = palette.black })
  hl("ErrorMsg", { fg = palette.red, bold = true })
  hl("WarningMsg", { fg = palette.yellow, bold = true })
  hl("MoreMsg", { fg = palette.yellow_pale })
  hl("Question", { fg = palette.yellow_light })

  hl("GitSignsAdd", { fg = palette.purple })
  hl("GitSignsChange", { fg = palette.purple })
  hl("GitSignsDelete", { fg = palette.purple })
  hl("GitSignsChangeDelete", { fg = palette.purple })

  hl("TelescopeNormal", { fg = palette.beige, bg = palette.black })
  hl("TelescopeBorder", { fg = palette.grey_darker, bg = palette.black })
  hl("TelescopeSelection", { fg = palette.yellow, bg = palette.grey_darker })

  hl("TreesitterContext", { bg = palette.black_light })

  hl("LspReferenceText", { bg = palette.grey_darker })
  hl("LspReferenceRead", { bg = palette.grey_darker })
  hl("LspReferenceWrite", { bg = palette.grey_darker })
  hl("LspSignatureActiveParameter", { fg = palette.yellow_strong })

  -- Ruby
  hl("@variable.member.ruby", { fg = palette.purple })
  hl("@string.ruby", { fg = palette.orange })
  hl("@constant.ruby", { fg = palette.purple })
  hl("@type.ruby", { fg = palette.pale_brown })

  -- Vue.js specific highlights
  hl("vueComponentName", { fg = palette.yellow_light }) -- Component names
  hl("vueTag", { fg = palette.yellow_pale }) -- HTML tags
  hl("vueDirective", { fg = palette.purple }) -- v-if, v-for, etc
  hl("vueAttr", { fg = palette.yellow }) -- Component props/attributes
  hl("vueMethod", { fg = palette.yellow_light }) -- Methods
  hl("vueComputed", { fg = palette.yellow_light }) -- Computed properties
  hl("vueWatch", { fg = palette.yellow_light }) -- Watch properties
  hl("vueEmit", { fg = palette.yellow_pale }) -- Emits
  hl("vueProps", { fg = palette.yellow }) -- Props definitions
  hl("vueData", { fg = palette.yellow_pale }) -- Data properties
  hl("vueFilter", { fg = palette.purple }) -- Filters
  hl("vueInterpolation", { fg = palette.yellow_strong }) -- {{ interpolation }}
  hl("vueTemplate", { fg = palette.grey_light }) -- <template> tag
  hl("vueScript", { fg = palette.grey_light }) -- <script> tag
  hl("vueStyle", { fg = palette.grey_light }) -- <style> tag
  hl("vueTemplateLiteral", { fg = palette.orange })
  hl("vueSetupKeyword", { fg = palette.purple }) -- 'setup' keyword
  hl("vueRef", { fg = palette.yellow_pale }) -- ref declarations
  hl("vueReactive", { fg = palette.yellow_pale }) -- reactive declarations
  hl("vueComposable", { fg = palette.yellow_light }) -- composable functions
  hl("vueLifecycleHook", { fg = palette.purple }) -- onMounted, etc
  hl("vueRouter", { fg = palette.yellow_light }) -- Router related code
  hl("vueStore", { fg = palette.yellow_light }) -- Store related code
  hl("vueTypeScript", { fg = palette.yellow }) -- TypeScript annotations
  hl("vueInterface", { fg = palette.yellow_light }) -- Interfaces
  hl("vueType", { fg = palette.yellow_light }) -- Type definitions
  hl("@vue.component", { fg = palette.yellow_light })
  hl("@vue.directive", { fg = palette.purple })
  hl("@vue.expression", { fg = palette.yellow_strong })
  hl("@vue.interpolation", { fg = palette.yellow_strong })
  hl("@vue.script_setup", { fg = palette.purple })
  hl("@vue.template_tag", { fg = palette.grey_light })
end

local function set_terminal_colors()
  vim.g.terminal_color_0 = palette.black
  vim.g.terminal_color_1 = palette.red
  vim.g.terminal_color_2 = palette.green
  vim.g.terminal_color_3 = palette.yellow
  vim.g.terminal_color_4 = palette.blue
  vim.g.terminal_color_5 = palette.purple
  vim.g.terminal_color_6 = palette.orange
  vim.g.terminal_color_7 = palette.grey_light
  vim.g.terminal_color_8 = palette.grey_dark
  vim.g.terminal_color_9 = palette.red_light
  vim.g.terminal_color_10 = palette.yellow_light
  vim.g.terminal_color_11 = palette.yellow_strong
  vim.g.terminal_color_12 = palette.blue
  vim.g.terminal_color_13 = palette.purple
  vim.g.terminal_color_14 = palette.brown_orange
  vim.g.terminal_color_15 = palette.cream
end

function M.load()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")
  vim.o.background = "dark"
  apply_colors()
  set_terminal_colors()
end

return M

local M = {}

local palette = require("ibira-pita.color-palette")

local function hl(group, color)
  vim.api.nvim_set_hl(0, group, color)
end

local function apply_colors()
  hl("Normal", { fg = palette.beige, bg = palette.black })
  hl("Comment", { fg = palette.grey, italic = true })
  hl("Constant", { fg = palette.yellow_light })
  hl("String", { fg = palette.yellow_strong })
  hl("Character", { fg = palette.yellow_strong })
  hl("Number", { fg = palette.yellow })
  hl("Boolean", { fg = palette.yellow })
  hl("Float", { fg = palette.yellow })
  hl("Identifier", { fg = palette.yellow_pale })
  hl("Function", { fg = palette.brown_orange })
  hl("Statement", { fg = palette.purple })
  hl("Conditional", { fg = palette.purple })
  hl("Repeat", { fg = palette.purple })
  hl("Label", { fg = palette.purple_light })
  hl("Operator", { fg = palette.purple_light })
  hl("Keyword", { fg = palette.purple_dark })
  hl("Exception", { fg = palette.purple })
  hl("PreProc", { fg = palette.purple_darker })
  hl("Include", { fg = palette.purple_darker })
  hl("Define", { fg = palette.purple_darker })
  hl("Macro", { fg = palette.purple_darker })
  hl("PreCondit", { fg = palette.purple_darker })
  hl("Type", { fg = palette.brown_orange_dark })
  hl("StorageClass", { fg = palette.purple_dark })
  hl("Structure", { fg = palette.brown_orange_dark })
  hl("Substitute", { fg = palette.black, bg = palette.brown_orange })
  hl("Typedef", { fg = palette.brown_orange_dark })
  hl("Special", { fg = palette.orange })
  hl("SpecialChar", { fg = palette.orange })
  hl("Tag", { fg = palette.orange })
  hl("Delimiter", { fg = palette.grey_light })
  hl("SpecialComment", { fg = palette.grey_light })
  hl("Debug", { fg = palette.red })
  hl("Underlined", { underline = true })
  hl("Ignore", { fg = palette.grey })
  hl("Error", { fg = palette.red })
  hl("Todo", { fg = palette.orange, bg = palette.grey_dark, bold = true })
  hl("CursorLine", { bg = palette.black_light })
  hl("CursorLineNr", { fg = palette.brown_orange, bold = true })
  hl("LineNr", { fg = palette.grey })
  hl("SignColumn", { fg = palette.grey_light, bg = palette.black })
  hl("StatusLine", { fg = palette.black, bg = palette.brown_orange })
  hl("StatusLineNC", { fg = palette.grey_light, bg = palette.black })
  hl("Visual", { bg = palette.grey_darker })
  hl("NormalFloat", { fg = palette.beige, bg = palette.black }) -- Same As Normal
  hl("Pmenu", { fg = palette.beige, bg = palette.black }) -- Same as Normal
  hl("PmenuSel", { fg = palette.black, bg = palette.brown_orange })
  hl("PmenuSbar", { bg = palette.grey_dark })
  hl("PmenuThumb", { bg = palette.grey })
  hl("TabLine", { fg = palette.grey_light, bg = palette.black })
  hl("TabLineFill", { fg = palette.black, bg = palette.grey_dark })
  hl("TabLineSel", { fg = palette.brown_orange, bg = palette.grey_dark })
  hl("DiffAdd", { fg = palette.yellow_pale, bg = palette.black })
  hl("DiffChange", { fg = palette.blue, bg = palette.black })
  hl("DiffDelete", { fg = palette.red, bg = palette.black })
  hl("DiffText", { fg = palette.black, bg = palette.green, bold = true })
  hl("DiagnosticError", { fg = palette.red })
  hl("DiagnosticWarn", { fg = palette.yellow })
  hl("DiagnosticInfo", { fg = palette.grey_dark })
  hl("DiagnosticHint", { fg = palette.grey })
  hl("TSAnnotation", { fg = palette.purple_light })
  hl("TSAttribute", { fg = palette.pale_brown })
  hl("TSBoolean", { fg = palette.yellow })
  hl("TSCharacter", { fg = palette.yellow_strong })
  hl("TSComment", { fg = palette.grey, italic = true })
  hl("TSConditional", { fg = palette.purple })
  hl("TSConstant", { fg = palette.yellow_light })
  hl("TSConstBuiltin", { fg = palette.yellow_light })
  hl("TSConstMacro", { fg = palette.yellow_light })
  hl("TSError", { fg = palette.red })
  hl("TSException", { fg = palette.purple })
  hl("TSField", { fg = palette.pale_brown })
  hl("TSFloat", { fg = palette.yellow })
  hl("TSFunction", { fg = palette.brown_orange })
  hl("TSFuncBuiltin", { fg = palette.brown_orange })
  hl("TSFuncMacro", { fg = palette.brown_orange })
  hl("TSKeyword", { fg = palette.purple_dark })
  hl("TSKeywordFunction", { fg = palette.purple_dark })
  hl("TSLabel", { fg = palette.purple_light })
  hl("TSMethod", { fg = palette.brown_orange })
  hl("TSNamespace", { fg = palette.brown_orange_dark })
  hl("TSNumber", { fg = palette.yellow })
  hl("TSOperator", { fg = palette.purple_light })
  hl("TSParameter", { fg = palette.yellow_pale })
  hl("TSProperty", { fg = palette.pale_brown })
  hl("TSPunctDelimiter", { fg = palette.grey_light })
  hl("TSPunctBracket", { fg = palette.grey_light })
  hl("TSPunctSpecial", { fg = palette.grey_dark })
  hl("TSString", { fg = palette.yellow_strong })
  hl("TSStringRegex", { fg = palette.orange })
  hl("TSStringEscape", { fg = palette.orange })
  hl("TSSymbol", { fg = palette.orange })
  hl("TSType", { fg = palette.brown_orange_dark })
  hl("TSTypeBuiltin", { fg = palette.brown_orange_dark })
  hl("TSVariable", { fg = palette.yellow_pale })
  hl("TSVariableBuiltin", { fg = palette.orange })
  hl("Title", { fg = palette.brown_orange })
  hl("@variable", { fg = palette.yellow_pale })
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
  hl("MoreMsg", { fg = palette.brown_orange })
  hl("Question", { fg = palette.brown_orange })

  hl("GitSignsAdd", { fg = palette.green })
  hl("GitSignsChange", { fg = palette.yellow })
  hl("GitSignsDelete", { fg = palette.red })
  hl("GitSignsChangeDelete", { fg = palette.red })

  hl("TelescopeNormal", { fg = palette.beige, bg = palette.black })
  hl("TelescopeBorder", { fg = palette.grey_darker, bg = palette.black })
  hl("TelescopeSelection", { fg = palette.brown_orange, bg = palette.grey_darker })

  hl("TreesitterContext", { bg = palette.black_light })

  hl("LspReferenceText", { bg = palette.grey_darker })
  hl("LspReferenceRead", { bg = palette.grey_darker })
  hl("LspReferenceWrite", { bg = palette.grey_darker })
  hl("LspSignatureActiveParameter", { fg = palette.orange })

  -- Ruby
  hl("@variable.member.ruby", { fg = palette.yellow_pale })
  hl("@string.ruby", { fg = palette.yellow_strong })
  hl("@constant.ruby", { fg = palette.yellow_light })
  hl("@type.ruby", { fg = palette.purple_light })

  -- Vue.js specific highlights
  hl("vueComponentName", { fg = palette.brown_orange_dark }) -- Component names
  hl("vueTag", { fg = palette.brown_orange_dark }) -- HTML tags
  hl("vueDirective", { fg = palette.purple }) -- v-if, v-for, etc
  hl("vueAttr", { fg = palette.pale_brown }) -- Component props/attributes
  hl("vueMethod", { fg = palette.brown_orange }) -- Methods
  hl("vueComputed", { fg = palette.brown_orange }) -- Computed properties
  hl("vueWatch", { fg = palette.brown_orange }) -- Watch properties
  hl("vueEmit", { fg = palette.orange }) -- Emits
  hl("vueProps", { fg = palette.pale_brown }) -- Props definitions
  hl("vueData", { fg = palette.yellow_pale }) -- Data properties
  hl("vueFilter", { fg = palette.purple_light }) -- Filters
  hl("vueInterpolation", { fg = palette.yellow_strong }) -- {{ interpolation }}
  hl("vueTemplate", { fg = palette.grey_light }) -- <template> tag
  hl("vueScript", { fg = palette.grey_light }) -- <script> tag
  hl("vueStyle", { fg = palette.grey_light }) -- <style> tag
  hl("vueTemplateLiteral", { fg = palette.yellow_strong })
  hl("vueSetupKeyword", { fg = palette.purple_dark }) -- 'setup' keyword
  hl("vueRef", { fg = palette.orange }) -- ref declarations
  hl("vueReactive", { fg = palette.orange }) -- reactive declarations
  hl("vueComposable", { fg = palette.brown_orange }) -- composable functions
  hl("vueLifecycleHook", { fg = palette.purple }) -- onMounted, etc
  hl("vueRouter", { fg = palette.brown_orange_dark }) -- Router related code
  hl("vueStore", { fg = palette.brown_orange_dark }) -- Store related code
  hl("vueTypeScript", { fg = palette.brown_orange_dark }) -- TypeScript annotations
  hl("vueInterface", { fg = palette.brown_orange_dark }) -- Interfaces
  hl("vueType", { fg = palette.brown_orange_dark }) -- Type definitions
  hl("@vue.component", { fg = palette.brown_orange_dark })
  hl("@vue.directive", { fg = palette.purple })
  hl("@vue.expression", { fg = palette.yellow_strong })
  hl("@vue.interpolation", { fg = palette.yellow_strong })
  hl("@vue.script_setup", { fg = palette.purple_dark })
  hl("@vue.template_tag", { fg = palette.grey_light })

  -- Mini.Tabline
  hl("MiniTablineCurrent", { fg = palette.brown_orange, bg = palette.black_light })
  hl("MiniTablineModifiedCurrent", { fg = palette.grey_dark, bg = palette.black_light })
  hl("MiniTablineVisible", { fg = palette.grey_dark, bg = palette.black })
  hl("MiniTablineModifiedVisible", { fg = palette.grey_dark, bg = palette.black })
  hl("MiniTablineHidden", { fg = palette.grey_dark, bg = palette.black })
  hl("MiniTablineModifiedHidden", { fg = palette.grey_dark, bg = palette.black })

  -- Mini.Diff
  hl("MiniDiffSignAdd", { fg = palette.green, bg = palette.black })
  hl("MiniDiffSignChange", { fg = palette.yellow, bg = palette.black })
  hl("MiniDiffSignDelete", { fg = palette.red, bg = palette.black })
  hl("MiniDiffOverAdd", { fg = palette.green, bg = palette.black, bold = true })
  hl("MiniDiffOverChange", { fg = palette.red, bg = palette.black_light, bold = true })
  hl("MiniDiffOverContext", { fg = palette.red, bg = palette.black, bold = true })
  hl("MiniDiffOverChangeBuf", { fg = palette.green, bg = palette.black_light, bold = true })
  hl("MiniDiffOverContextBuf", { fg = palette.green, bg = palette.black, bold = true })
  hl("MiniDiffOverDelete", { fg = palette.red, bg = palette.black, bold = true })
  -- Neogit Diff
  hl("NeogitDiffAdd", { fg = palette.green, bg = palette.black_light })
  hl("NeogitDiffChange", { fg = palette.yellow, bg = palette.black_light })
  hl("NeogitDiffDelete", { fg = palette.red, bg = palette.black_light })
  hl("NeogitDiffAddHighlight", { fg = palette.green, bg = palette.black_light, bold = true })
  hl("NeogitDiffChangeHighlight", { fg = palette.yellow, bg = palette.black_light, bold = true })
  hl("NeogitDiffDeleteHighlight", { fg = palette.red, bg = palette.black_light, bold = true })
  hl("NeogitDiffContextHighlight", { fg = palette.grey_light, bg = palette.black, bold = true })

  -- DiffView
  hl("DiffviewNormal", { fg = palette.beige, bg = palette.black })
  hl("DiffviewCursorLine", { bg = palette.black_light })
  hl("DiffviewVertSplit", { fg = palette.grey_darker })
  hl("DiffviewSignColumn", { bg = palette.black })
  hl("DiffviewStatusLine", { fg = palette.grey_light, bg = palette.black_light })
  hl("DiffviewStatusLineNC", { fg = palette.grey_dark, bg = palette.black })
  hl("DiffviewFilePanelTitle", { fg = palette.yellow_strong, bold = true })
  hl("DiffviewFilePanelCounter", { fg = palette.purple, bold = true })
  hl("DiffviewFilePanelFileName", { fg = palette.beige })
  hl("DiffviewFilePanelPath", { fg = palette.grey })
  hl("DiffviewFilePanelInsertions", { fg = palette.green })
  hl("DiffviewFilePanelDeletions", { fg = palette.red })
  hl("DiffviewFilePanelConflicts", { fg = palette.red, bold = true })
  hl("DiffviewFilePanelSelected", { fg = palette.yellow, bold = true })
  hl("DiffviewFolderSign", { fg = palette.grey_dark })
  hl("DiffviewFolderName", { fg = palette.grey_light })
  hl("DiffviewReference", { fg = palette.purple })
  hl("DiffviewPrimary", { fg = palette.yellow_strong })
  hl("DiffviewSecondary", { fg = palette.blue })
  hl("DiffviewDim1", { fg = palette.grey })
  hl("DiffviewNonText", { fg = palette.grey_darker })
  -- Added lines: green sign, normal text
  hl("DiffviewDiffAdd", { fg = palette.green })
  -- Deleted lines: red sign, dimmed text
  hl("DiffviewDiffDelete", { fg = palette.red })
  -- Changed text within added lines: green background
  hl("DiffviewDiffText", { fg = palette.black, bg = palette.green, bold = true })
  -- Deleted text shown in removed section: red background (only visible in left/removed pane)
  hl("DiffviewDiffAddAsDelete", { fg = palette.black, bg = palette.red })
  hl("DiffviewDiffDeleteDim", { fg = palette.grey_dark })

  -- Obsidian.nvim
  hl("ObsidianTodo", { fg = palette.orange, bold = true })
  hl("ObsidianDone", { fg = palette.grey })
  hl("ObsidianRightArrow", { fg = palette.purple_light })
  hl("ObsidianTilde", { fg = palette.grey })
  hl("ObsidianImportant", { fg = palette.brown_orange_dark, bold = true })
  hl("ObsidianBullet", { fg = palette.grey_light })
  hl("ObsidianRefText", { fg = palette.purple, underline = true })
  hl("ObsidianExtLinkIcon", { fg = palette.purple_light })
  hl("ObsidianTag", { fg = palette.brown_orange, italic = true })
  hl("ObsidianBlockID", { fg = palette.grey_dark })
  hl("ObsidianHighlightText", { fg = palette.black, bg = palette.orange })
  hl("ObsidianUI", { fg = palette.beige })
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

local M = {}

local palette = {
	black = "#0B0B0B",
	grey = "#8F847B",
	grey_light = "#BEB6AE",
	grey_dark = "#3A3A3A",
	blue = "#6CB4EE",
	yellow = "#F0D020",
	yellow_strong = "#F8C630",
	yellow_light = "#FFFD99",
	brown_orange = "#DD6644",
	orange = "#F29559",
	red = "#FF4040",
	purple = "#583641",
}
local colors = {
	background = palette.black,
	foreground = palette.grey_light,
	keyword = palette.blue,
	func = palette.red,
	string = palette.brown_orange,
	comment = palette.grey,
	variable = palette.yellow,
	variable_root = palette.grey,
	number = palette.yellow_strong,
	cursorline = palette.purple,
	cursorcolumn = palette.yellow_light,
	visual = palette.yellow_strong,
	constant = palette.yellow,
	preprocessor = palette.blue,
	special = palette.blue,
	line_number = palette.grey,
	cursor_line_number = palette.yellow,
	non_text = palette.grey,
}

local function hl(group, color)
	vim.api.nvim_set_hl(0, group, color)
end

local function apply_colors()
	hl("Boolean", { fg = colors.constant })
	hl("Character", { fg = colors.constant })
	hl("Comment", { fg = colors.comment })
	hl("Constant", { fg = colors.constant })
	hl("CursorColumn", { bg = colors.cursorcolumn })
	hl("CursorLine", { bg = colors.cursorline })
	hl("CursorLineNr", { fg = colors.cursor_line_number, bg = colors.cursorline })
	hl("Delimiter", { fg = colors.non_text })
	hl("EndOfBuffer", { fg = colors.non_text })
	hl("Function", { fg = colors.func })
	hl("Identifier", { fg = colors.variable })
	hl("Keyword", { fg = colors.keyword })
	hl("LineNr", { fg = colors.line_number, bg = colors.background })
	hl("NonText", { fg = colors.non_text })
	hl("Normal", { fg = colors.foreground, bg = colors.background })
	--hl("NormalFloat", { bg = colors.number })
	hl("Number", { fg = colors.number })
	hl("Operator", { fg = colors.grey })
	hl("PreProc", { fg = colors.preprocessor })
	hl("Special", { fg = colors.special })
	hl("String", { fg = colors.string })
	--hl("Tag", { fg = colors.keyword })
	hl("Visual", { bg = colors.visual, fg = colors.background })
	hl("Whitespace", { fg = colors.non_text })
	hl("@variable", { fg = colors.variable_root })
end

function M.load()
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")
	vim.o.background = "dark"
	apply_colors()
end

return M

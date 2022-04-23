local c = require("colors").get()

-- functions for setting highlights
local fg = require("core.utils").fg
local fg_bg = require("core.utils").fg_bg
local bg = require("core.utils").bg

-- Comments
-- fg("Comment", grey_fg .. " gui=italic") --italic!
fg("Comment", c.grey_fg)

-- Line number
fg("cursorlinenr", c.white)

-- same it bg, so it doesn't appear
fg("EndOfBuffer", c.black)

-- For floating windows
fg("FloatBorder", c.blue)
bg("NormalFloat", c.darker_black)

-- Pmenu
bg("Pmenu", c.one_bg)
bg("PmenuSbar", c.one_bg2)
bg("PmenuSel", c.pmenu_bg)
bg("PmenuThumb", c.nord_blue)
fg("CmpItemAbbr", c.white)
fg("CmpItemAbbrMatch", c.white)
fg("CmpItemKind", c.white)
fg("CmpItemMenu", c.white)

fg("LineNr", c.grey)
fg("NvimInternalError", c.red)
fg("VertSplit", c.one_bg2)

-- Git signs
fg_bg("DiffAdd", c.blue, "NONE")
fg_bg("DiffChange", c.grey_fg, "NONE")
fg_bg("DiffChangeDelete", c.red, "NONE")
fg_bg("DiffModified", c.red, "NONE")
fg_bg("DiffDelete", c.red, "NONE")

-- Indent blankline plugin
fg("IndentBlanklineChar", c.line)
fg("IndentBlanklineSpaceChar", c.line)

-- Lsp diagnostics

fg("DiagnosticHint", c.purple)
fg("DiagnosticError", c.red)
fg("DiagnosticWarn", c.yellow)
fg("DiagnosticInformation", c.green)

-- NvimTree
fg("NvimTreeEmptyFolderName", c.folder_bg)
fg("NvimTreeEndOfBuffer", c.darker_black)
fg("NvimTreeFolderIcon", c.folder_bg)
fg("NvimTreeFolderName", c.folder_bg)
fg("NvimTreeGitDirty", c.red)
fg("NvimTreeIndentMarker", c.one_bg2)
bg("NvimTreeNormal", c.darker_black)
bg("NvimTreeNormalNC", c.darker_black)
fg("NvimTreeOpenedFolderName", c.folder_bg)
fg("NvimTreeRootFolder", c.red .. " gui=underline") -- enable underline for root folder in nvim tree
fg_bg("NvimTreeStatuslineNc", c.darker_black, c.darker_black)
fg_bg("NvimTreeVertSplit", c.darker_black, c.darker_black)
fg_bg("NvimTreeWindowPicker", c.red, c.black2)

-- Telescope
fg_bg("TelescopeBorder", c.darker_black, c.darker_black)
fg_bg("TelescopePromptBorder", c.black2, c.black2)

fg_bg("TelescopePromptNormal", c.white, c.black2)
fg_bg("TelescopePromptPrefix", c.red, c.black2)

bg("TelescopeNormal", c.darker_black)

fg_bg("TelescopePreviewTitle", c.black, c.green)
fg_bg("TelescopePromptTitle", c.black, c.red)
fg_bg("TelescopeResultsTitle", c.darker_black, c.darker_black)

bg("TelescopeSelection", c.black2)

bg("NormalFloat", "NONE")
bg("NvimTreeNormal", "NONE")
bg("NvimTreeNormalNC", "NONE")
bg("NvimTreeStatusLineNC", "NONE")
fg_bg("NvimTreeVertSplit", c.grey, "NONE")

-- telescope
bg("TelescopeBorder", "NONE")
bg("TelescopePrompt", "NONE")
bg("TelescopeResults", "NONE")
bg("TelescopePromptBorder", "NONE")
bg("TelescopePromptNormal", "NONE")
bg("TelescopeNormal", "NONE")
bg("TelescopePromptPrefix", "NONE")
fg("TelescopeBorder", c.one_bg)
fg_bg("TelescopeResultsTitle", c.black, c.blue)

-- bg("Normal", "NONE")
-- bg("Folded", "NONE")
-- fg("Folded", "NONE")
-- fg("Comment", c.grey)

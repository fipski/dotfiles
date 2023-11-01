-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
	CursorLine = { bg = "black2", },
  Comment = { italic = true, },
  TreesitterContext = { italic=true },
  TbLineBufOn = {  bold = true, bg = "#81a1c1", fg = "#2e3440"},
  TbLineBufOnModified = { bg = "#81a1c1" },
  TbLineBufOnClose = { bg = "#81a1c1" },
  -- TblineFill = { bg = "green", bold = true },
  -- TbLineThemeToggleBtn = { bg = "green", bold = true },
  -- TbLineTabOn = { bg = "green", bold = true },
  -- TbLineTabOff = { bg = "green", bold = true },
  -- TbLineTabCloseBtn = { bg = "green", bold = true },
  -- TbLineCloseAllBufsBtn = { bg = "green", bold = true },
  -- TbLineBufOnModified = { bg = "green", bold = true },
  -- TbLineBufOffModified = { bg = "green", bold = true },
  -- TbLineBufOffClose = { bg = "green", bold = true },
  -- TbLineBufOff = { bg = "green", bold = true },
}

---@type HLTable
M.add = {
  -- NvimTreeOpenedFolderName = { fg = "green", bold = true },
  TreesitterContext = { italic = true, },
}


return M


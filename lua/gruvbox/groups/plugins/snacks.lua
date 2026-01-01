local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
  ---@type GruvboxHighlights
  -- stylua: ignore
  return {
    SnacksDashboardHeader  = { fg = colors.blue },
    SnacksDashboardTitle   = { fg = colors.blue, bold = true },
    SnacksDashboardIcon    = { link = "SnacksDashboardDesc" },
    SnacksDashboardDesc    = { fg = colors.gray },
    SnacksDashboardKey     = { fg = colors.blue },
    SnacksDashboardFooter  = { fg = colors.blue },
    SnacksDashboardSpecial = { link = "Special" },

    SnacksPickerPrompt             = { fg = colors.red },
    SnacksPickerFile               = { fg = colors.fg1 },
    SnacksPickerDirectory          = { fg = colors.fg1 },
    SnacksPickerDir                = { fg = colors.gray },
    SnacksPickerTotals             = { fg = colors.gray },
    SnacksPickerBufFlags           = { fg = colors.gray },
    SnacksPickerKeymapRhs          = { fg = colors.gray },
    SnacksPickerUnselected         = { fg = colors.gray },
    SnacksPickerPathHidden         = { fg = colors.gray },
    SnacksPickerPathIgnored        = { fg = colors.gray },
    SnacksPickerGitStatusIgnored   = { link = "SnacksPickerPathIgnored" },
    SnacksPickerGitStatusUntracked = { link = "SnacksPickerPathIgnored" },
    SnacksPickerToggle             = { link = "FloatTitle" },

    SnacksInputIcon = { fg = colors.red },
  }
end

return M

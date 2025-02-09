local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, _)
    ---@type GruvboxHighlights
    return {
        SnacksPickerFile = { fg = colors.fg1 },
        SnacksPickerDirectory = { fg = colors.fg1 },
        SnacksPickerPrompt = { fg = colors.red },
        SnacksPickerDir = { fg = colors.bg4 },
        SnacksPickerTotals = { fg = colors.bg4 },
        SnacksPickerBufFlags = { fg = colors.bg4 },
        SnacksPickerKeymapRhs = { fg = colors.bg4 },
        SnacksPickerPathHidden = { fg = colors.bg4 },
        SnacksPickerUnselected = { fg = colors.bg4 },
        SnacksPickerPathIgnored = { fg = colors.bg4 },
        SnacksPickerGitStatusIgnored = { fg = colors.bg4 },
        SnacksPickerGitStatusUntracked = { fg = colors.bg4 },

        SnacksInputIcon = { fg = colors.red },

        SnacksDashboardDesc = { fg = colors.gray },
        SnacksDashboardIcon = { link = "SnacksDashboardDesc" },
        SnacksDashboardKey = { fg = colors.blue },
        SnacksDashboardSpecial = { link = "Special" },
        SnacksDashboardTitle = { fg = colors.blue },
        SnacksDashboardFooter = { fg = colors.blue },
        SnacksDashboardHeader = { fg = colors.blue },
    }
end

return M

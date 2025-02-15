local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, opts)
    local style = opts.style
    ---@type GruvboxHighlights
    return {
        SnacksPickerFile = { fg = colors.fg1 },
        SnacksPickerDirectory = { fg = colors.fg1 },
        SnacksPickerPrompt = { fg = colors.red },
        SnacksPickerDir = { fg = colors.gray },
        SnacksPickerTotals = { fg = colors.gray },
        SnacksPickerBufFlags = { fg = colors.gray },
        SnacksPickerKeymapRhs = { fg = colors.gray },
        SnacksPickerPathHidden = { fg = colors.gray },
        SnacksPickerUnselected = { fg = colors.gray },
        SnacksPickerPathIgnored = { fg = colors.gray },
        SnacksPickerGitStatusIgnored = { fg = colors.gray },
        SnacksPickerGitStatusUntracked = { fg = colors.gray },

        SnacksInputIcon = { fg = colors.red },

        SnacksDashboardHeader = { fg = colors.blue },
        SnacksDashboardTitle = { fg = colors.blue, bold = style.bold },

        SnacksDashboardIcon = { link = "SnacksDashboardDesc" },
        SnacksDashboardDesc = { fg = colors.gray },
        SnacksDashboardKey = { fg = colors.blue },

        SnacksDashboardFooter = { fg = colors.blue },

        SnacksDashboardSpecial = { link = "Special" },
    }
end

return M

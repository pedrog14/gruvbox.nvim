local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, opts)
    local style = opts.style
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

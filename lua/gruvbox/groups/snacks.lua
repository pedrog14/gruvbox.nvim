---@type GruvboxGroup
local M = {}

M.get = function(colors, opts)
    local style = opts.style
    ---@type GruvboxHighlights
    return {
        SnacksPickerFile = { fg = colors.fg1 },
        SnacksPickerDirectory = { fg = colors.fg1 },
        SnacksPickerPrompt = { fg = colors.red },

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

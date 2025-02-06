---@type GruvboxGroup
local M = {}

M.get = function(colors, opts)
    local style = opts.style
    ---@type GruvboxHighlights
    return {
        SnacksPickerDirectory = { fg = colors.fg1, bold = style.bold },
        SnacksInputIcon = { fg = colors.red },
        SnacksPickerPrompt = { fg = colors.red },

        SnacksDashboardKey = { fg = colors.blue },
        SnacksDashboardDesc = { fg = colors.gray },
        -- SnacksDashboardFile = {},
        SnacksDashboardIcon = { fg = colors.gray },
        SnacksDashboardSpecial = { fg = colors.yellow },
        -- SnacksDashboardNormal = {},
        SnacksDashboardTitle = { fg = colors.blue },
        SnacksDashboardFooter = { fg = colors.orange },
        SnacksDashboardHeader = { fg = colors.blue },
        -- SnacksDashboardTerminal = {},
    }
end

return M

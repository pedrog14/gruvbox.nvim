---@type GruvboxGroup
local M = {}

M.get = function(colors, opts)
    local style = opts.style
    ---@type GruvboxHighlights
    return {
        MiniIconsPurple = { fg = colors.purple },
        MiniIconsBlue = { fg = colors.blue },
        MiniIconsAzure = { fg = colors.blue },
        MiniIconsCyan = { fg = colors.aqua },
        MiniIconsGreen = { fg = colors.green },
        MiniIconsYellow = { fg = colors.yellow },
        MiniIconsOrange = { fg = colors.orange },
        MiniIconsRed = { fg = colors.red },
        MiniIconsGrey = { fg = colors.gray },
    }
end

return M

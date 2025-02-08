local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, _)
    ---@type GruvboxHighlights
    return {
        NoiceCmdlineIcon = { fg = colors.red },
        NoiceCmdlineIconLua = { fg = colors.blue },
    }
end

return M

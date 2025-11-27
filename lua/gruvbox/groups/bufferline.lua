local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors, _)
    ---@type GruvboxHighlights
    return {
        BufferLineIndicatorSelected = { fg = colors.blue },
    }
end

return M

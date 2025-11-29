local M = {}

---@type GruvboxHighlightsGet
M.get = function(colors)
    ---@type GruvboxHighlights
    return {
        BufferLineIndicatorSelected = { fg = colors.blue },
    }
end

return M
